zip_code = /\d{5}/
"Hello".match zip_code  # nil
"White House zip: 20500".match zip_code  # 20500
"White House: 20500 and Air Force: 20330".scan zip_code # ['20500', '20330']
"Apple Orange Banana".split(/\s+/) # ['Apple','Orange', 'Banana']
