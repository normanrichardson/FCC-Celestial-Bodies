def unique(func):
  used = set()
  def inner(*args, **kwargs):
    while True:
      num = len(used)
      item = func(*args, **kwargs)
      used.add(item)
      num = len(used) - num 
      if num>0:
        return item
  return inner
