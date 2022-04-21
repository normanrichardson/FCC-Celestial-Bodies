from faker import Faker
fake = Faker()
from . import unique

u_first_name = unique.unique(fake.first_name)
fake_occupants = lambda n, end=",": f"    (\
  '{u_first_name()}', \
  {fake.random_int(min=1, max=n)}, \
  {fake.random_int(min=1, max=10)} \
  ){end}"
