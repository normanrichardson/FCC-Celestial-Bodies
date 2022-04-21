from fake_models.galaxy import fake_galaxy
from fake_models.galaxy import fake_galaxy_csv
from fake_models.star import fake_star
from fake_models.planet import fake_planet
from fake_models.moon import fake_moon
from fake_models.occupants import fake_occupants
from string import Template

def line_gen(func, num, **kwargs):
    for ii in range(num):
        end = ';' if ii/(num-1)==1 else ","
        yield func(end=end, **kwargs)

def main():
    #Faker.seed()
    with open('./generateData/sql_template.sql', 'r') as f:
        template_str = f.read()

    template = Template(template_str)
    mappings = dict()

    mappings['galaxy_data']    = '\n'.join(line_gen(fake_galaxy, num=6))
    mappings['star_data']      = '\n'.join(line_gen(fake_star, num=6, n=6))
    mappings['planet_data']    = '\n'.join(line_gen(fake_planet, num=12, n=6))
    mappings['moon_data']      = '\n'.join(line_gen(fake_moon, num=20, n=12))
    mappings['occupants_data'] = '\n'.join(line_gen(fake_occupants, num=100, n=12))

    with open('./sql_files/create.sql', 'w') as f:
        f.write(template.substitute(mappings))


if __name__ == "__main__":
    main()