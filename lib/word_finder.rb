class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters_collection)
    possible_words = []
    words.each do |word|
      if (word.chars - letters_collection).empty?
        possible_words << word
      end
    end
    possible_words
  end
end
