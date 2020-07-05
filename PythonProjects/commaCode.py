def list_str(lst_val):
        new_str = ", ".join(lst_val[:-1]  + ['and ' + lst_val[-1]])
        return new_str
spam2 = ['apples', 'bananas', 'tofu', 'cats', 'dogs']
print(list_str(spam2))
