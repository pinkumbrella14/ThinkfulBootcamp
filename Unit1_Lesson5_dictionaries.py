#dictionaries have different performance implications than working
    #with lists. This has to do with calling data by key vs calling
    #data by index......

print("A dictionary in Python is a key: value pair.")
print('''
This is an example of setting up a dictionary.
stock = {
apples: 5,
oranges: 2,
pears: 11,
peaches: 3
}
''')
stock = {
"apples": 5,
"oranges": 2,
"pears": 11,
"peaches": 3
}
print(stock)
print(stock["oranges"])
print(stock["peaches"])

print("Creating a new value in the dictionary is also done with [].")
print('''
Adding a new item (aka key: value pair) to stock:
stock["kiwi"] = 6
''')

stock["kiwi"] = 6
print(stock)

print('The del keyword deletes item from dictionary.')
print("del stock[\"pears\"] will delete the pears key and its value")
del stock["pears"]
print(stock)
print("Writing 'pears' in stock will give you 'False'")
print("pears" in stock)

print('Important dictionary methods to keep track of:')
print('The .keys() method will return all the keys in the dictionary')
print('The .values() method will return all the values in a dictionary')
print('The .items() method will return all the key: value pairs in the dicitonary')
print('''
You can use the dictionary methods to make a real list from dictionaries!
list(stock.keys()) will make a list out the stock dictionary.
''')
stock_list = list(stock.keys())
print(stock_list)

full_stock_list = list(stock.items())
print(full_stock_list)

print('''
Dictionary items are printed in an ARBITRARY order.
Use the sorted() function to get a sort.
list(sorted(stock.keys()))
''')
print(list(sorted(stock.keys())))


#dictionary kata!!!
print('Here are the dictionary kata that I complete.')
print('''
kata 1:
You are fullfilling orders and need an automaric way to check if items in stock.
stock = {
'football': 4,
'boardgame': 10,
'leggos': 1,
'doll': 5,
}

The check include listing a value greater than what is available or
listing an item that is not in the dictionary.
''')
stock = {
'football': 4,
'boardgame': 10,
'leggos': 1,
'doll': 5,
}
print(stock)

print('Here is the function I wrote to check the orders.')
print('''
def fillable(stock, merch, n):
    try:
        if stock[merch] >= n:
            return True
        else:
            return False
    except KeyError:
        return False
''')

def fillable(stock, merch, n):
    try:
        if stock[merch] >= n:
            return True
        else:
            return False
    except KeyError:
        return False
outcome = fillable(stock, 'football', 3)
print(outcome)

another_outcome = fillable(stock, 'action figure', 0)
print(another_outcome)


#second kata development
print('second kata development')
try_data = [["Grae Drake", 98110], ["Bethany Kok"], ["Alex Nussbacher", 94101]]
def user_contacts(data):
    result = {}
    for datum in data:
        name = datum[0]

        try:
            zip = datum[1]
        except IndexError:
            zip = None
        result[name] = zip
    print(result)

user_contacts(try_data)
