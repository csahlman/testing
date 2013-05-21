class FakeTwitter
  # read about OpenStruct


  def self.[]=(term, results) # what happens when you play with hashes
    @data ||= {}
    @data[term] = results
  end

  def self.search(term)
    @data ||= {}  # fetch term from a hash, return []
    results = @data.fetch(term, []).map {|hash| Twitter::Status.new(hash.merge(id: 1)) }
    OpenStruct.new(results: results)
  end

  def self.clear
    @data = {}
  end


end