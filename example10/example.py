class GetitemTest(object):
    def __getitem__(self, item):
        print(f"getting: {item} type of {type(item)}")
        return self

x = GetitemTest()
x[1,2]
x[1::]
x[1:5,0:2]
x[1:5:0.3]
a = slice(1,5,0.5)
print(a.start, a.stop, a.step)
# getting: (1, 2) type of <class 'tuple'>
# getting: slice(1, None, None) type of <class 'slice'>
# getting: (slice(1, 5, None), slice(0, 2, None)) type of <class 'tuple'>
# getting: slice(1, 5, 0.3) type of <class 'slice'>