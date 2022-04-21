from faker import Faker
fake = Faker()
from . import unique

u_first_name = unique.unique(fake.first_name)
fake_star = lambda n, end=",": f"    (\
  '{u_first_name()}',\
  {fake.random_int(min=1, max=n)}, \
  '{fake.text(max_nb_chars=40)}', \
  {fake.random_int()},\
  {fake.random_int(max=99999)}.{fake.random_int(max=99)}\
  ){end}"
