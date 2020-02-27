#### Save

import pickle

my_list = [123,3.14,"Fish",["Sub list"]]

pickle_file = open("my_list.pickle","wb")

pickle.dump(my_list,pickle_file)

pickle_file.close()

pickle_file = open("my_list.pickle","rb")

my_load = pickle.load(pickle_file)

print(my_load)
    # [123, 3.14, 'Fish', ['Sub list']]