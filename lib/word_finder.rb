class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters_collection)
    possible_words = []
    words.each { |line|
      unless letters_collection.map { |c| line.include?(c) }.include? false
        possible_words << line
      end
    }
  end
end
