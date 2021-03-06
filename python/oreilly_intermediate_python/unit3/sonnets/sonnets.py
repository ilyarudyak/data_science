import time

my_words = [elt.strip() for elt in open("sonnet_words.txt", "r").readlines()]
word_list = [elt.strip() for elt in open("sowpods.txt", "r").readlines()]
word_dict = {elt:1 for elt in word_list}             

counter = 0

start = time.time()

for word in my_words:
    
    # instead of word_list
    # we don't need to call keys()
    if word not in word_dict:           
        print(word)
        counter += 1

stop = time.time()        

print("Total new words: %d" % counter)
print("Total time: %.1f" % (stop - start))
