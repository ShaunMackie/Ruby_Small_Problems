=begin

# #Problem

# - write a program that reads the content of a text file and then prints the longest sentence in the file based on the number of words
  # - Sentences may end with periods, exclamation points, or question marks
  # - any sequence of characters that are not spaces or sentence-ending characters should be treated as a words
  # - you should also rpint the number of words in the longest sentence

# #Input

  - a string

# #Output

- a string and an integer

# #Examples

# # Rules + Questions
- sentences end with punctuation
- anything that isn't a punctuation mark is a word

# #Algorithm 

- determine the longest sentence
  - a sentence is measured from either the beginning of the text to the first punctuation mark 
    or from the last punctuation mark to the next punctuation mark
- return the longest sentence
- return an integer representing how many words are in the longest sentence

# # Implementation Notes 
- initialize a global variable and store the 3 punctuation marks in it

- convert the given text to an array of sentences

  - init a variable 'sentences' to store the results. assign an empty array
  - init a current_index variable to store the current index. assign a value of zero
  - convert the given string to an array of words
  - iterate over the string with index
  - each time you find a word that ends with a punctuation mark, move all the preceeding words including the current word
    into a sub array
    - if the current word contains a punctuation mark, move the value of counter + the current index into the sub array
    - reassign counter to the current index + 1?

- determine which sub-array is the longest and return it
  - init a longest-setence variable assign an empty string
  - init a longest sentence count variable and assign a value of zero
  - iterate over the setences array
  - store each max count in the longest-sentence count variable
  - same for string
  - 
- return longest sentence and the count variable


=end

def longest_sentence(text)
  sentences = []
  current_index = 0
  split_text = text.split
  longest_sentence = ''
  longest_sentence_count = 0

  split_text.each.with_index do |word, index|
    if word[-1] == '.' || word[-1] == '!' || word[-1] == '?' || word[-1] == '"'
      sentences << split_text[current_index..index].to_a
      current_index = index + 1
    end
  end
    sentences.each do |sub_array|
      if sub_array.count > longest_sentence_count
        longest_sentence_count = sub_array.count
        longest_sentence = sub_array.join(' ')
      end
    end
    p longest_sentence
    p longest_sentence_count
end

longest_sentence("Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.")