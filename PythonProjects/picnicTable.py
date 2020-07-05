def picnic(picnicitem, left, right):
    print('Picnic Items'.center(left + right, '-'))
    for k, v in picnicitem.items():
        print(k.ljust(left, '.') + str(v).rjust(right))

picnicItems = {'sandwiches': 4, 'apples': 12, 'cups': 4, 'cookies': 8000}
picnic(picnicItems, 12, 5)
picnic(picnicItems, 20, 6)
