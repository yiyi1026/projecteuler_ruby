# print 'b'.center(5)
def prime(n):
  return [x for x in range(2,n) if not [t for t in range(2,x) if not x%t]]

print prime(100)