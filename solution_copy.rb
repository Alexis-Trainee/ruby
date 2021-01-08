require "net/http"
require "rexml/document"
require "speech"

class MacbethAnalyzer
  MACBETH_URL = "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"
  IGNORE_SPEAKERS = %w(ALL)

  def analyze
    results = Hash.new(0)
    each_speech_element do |speech_element|
      speech = Speech.new(speech_element)

      if !IGNORE_SPEAKERS.include?(speech.speaker)
        results[speech.speaker] += speech.lines.count
      end
    end
    results
  end

  private

  def each_speech_element(&block)
    xml_doc.elements.each("PLAY/ACT/SCENE/SPEECH", &block)
  end

  def xml_doc
    REXML::Document.new macbeth_xml
  end

  def macbeth_xml
    Net::HTTP.get URI(MACBETH_URL)
  end
end

class Speech
  def initialize(speech_element)
    @speech_element = speech_element
  end

  def speaker
    grouped["SPEAKER"].first.text
  end

  def lines
    grouped["LINE"].map(&:text)
  end

  private

  attr_reader :speech_element

  def grouped
    speech_element.elements.group_by(&:name)
  end
end

require_relative "../lib/macbeth_analyzer"

describe MacbethAnalyzer do
  before do
    fixture_file = File.expand_path("../../spec/fixtures/macbeth.xml", __FILE__)

    allow(Net::HTTP).to receive(:get).and_return(File.new(fixture_file))
  end

  context "#analyze" do
    it "returns number of lines per speaker" do
      analyzer = MacbethAnalyzer.new

      results = analyzer.analyze

      expect(results["MACBETH"]).to eq(719)
      expect(results["BANQUO"]).to eq(113)
      expect(results["DUNCAN"]).to eq(70)
      expect(results["ALL"]).to be_zero
    end
  end
end
require_relative "../lib/macbeth_analyzer"

describe Speech do
  context "#speaker" do
    it "returns the <SPEAKER> element's text" do
      speech = Speech.new(speech_element)

      expect(speech.speaker).to eq("Speaker")
    end
  end

  context "#lines" do
    it "returns the <LINE>'s text as an array" do
      speech = Speech.new(speech_element)

      expect(speech.lines).to eq(["Line 1", "Line 2"])
    end
  end

  def speech_element
    document = REXML::Document.new <<SPEECH
<SPEECH>
<SPEAKER>Speaker</SPEAKER>
<LINE>Line 1</LINE>
<LINE>Line 2</LINE>
</SPEECH>
SPEECH
    document.elements.first
  end
end
