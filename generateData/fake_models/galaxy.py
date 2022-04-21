from faker import Faker
fake = Faker()
from . import unique

u_first_name = unique.unique(fake.first_name)
fake_galaxy = lambda end=',': f"    (\
  '{u_first_name()}',\
  '{fake.text(max_nb_chars=40)}', \
  {fake.random_int(max=99999)}.{fake.random_int(max=99)},\
  {fake.random_element(elements=range(1,4))}\
  ){end}"

u_first_name = unique.unique(fake.first_name)
fake_galaxy_csv = lambda end=',': f"\
  '{u_first_name()}',\
  '{fake.text(max_nb_chars=40)}', \
  {fake.random_int(max=99999)}.{fake.random_int(max=99)},\
  {fake.random_element(elements=range(1,4))}\
  {end}"
