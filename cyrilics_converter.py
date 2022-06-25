class CyrilicsMapper():

    cyrilics_mapper = dict()

    def __init__(self):
        self.cyrilics_mapper = {
            'А' : 'A',
            'а' : 'a',
            'Б' : 'B',
            'б' : 'b',
            'В' : 'V',
            'в' : 'v',
            'Г' : 'G',
            'г' : 'g',
            'Д' : 'D',
            'д' : 'd',
            'Ђ' : 'DY',
            'ђ' : 'dy',
            'Е' : 'E',
            'е' : 'e',
            'Ж' : 'ZY',
            'ж' : 'zy',
            'З' : 'Z',
            'з' : 'z',
            'И' : 'I',
            'и' : 'i',
            'Ј' : 'J',
            'ј' : 'j',
            'К' : 'K',
            'к' : 'k',
            'Л' : 'L',
            'л' : 'l',
            'Љ' : 'LY',
            'љ' : 'ly',
            'М' : 'M',
            'м' : 'm',
            'Н' : 'N',
            'н' : 'n',
            'Њ' : 'NY',
            'њ' : 'ny',
            'О' : 'O',
            'о' : 'o',
            'П' : 'P',
            'п' : 'p',
            'Р' : 'R',
            'р' : 'r',
            'С' : 'S',
            'с' : 's',
            'Т' : 'T',
            'т' : 't',
            'Ћ' : 'CY',
            'ћ' : 'cy',
            'У' : 'U',
            'у' : 'u',
            'Ф' : 'F',
            'ф' : 'f',
            'Х' : 'H',
            'х' : 'h',
            'Ц' : 'C',
            'ц' : 'c',
            'Ч' : 'CS',
            'ч' : 'cs',
            'Џ' : 'DZ',
            'џ' : 'dz',
            'Ш' : 'SY',
            'ш' : 'sy'
        }
        self.do()
        
    def do(self):
        print("I am reading file...\n")
        self.read()
        print(self.content)
        print()

        print("Parsing...\n")
        self.parse_cyrilic_content()
        print(self.parsed_content)
        print()

        print("Creating new file...\n")
        self.create_new_file()
        print("The file " +  self.new_filename + " is created.")

    def read(self):
        full_filename = "test.txt"
        self.new_filename = "parsed_" + full_filename
        f = open(full_filename, encoding = 'utf-8', mode = 'r')
        self.content = f.read()
        f.close()

    def parse_cyrilic_content(self):
        self.parsed_content = ""
        for c in self.content:
            if c in self.cyrilics_mapper:
                self.parsed_content += self.cyrilics_mapper[c]
            else:
                self.parsed_content += c

    def create_new_file(self):
        new_f = open(self.new_filename, "w")
        new_f.write(self.parsed_content)
        new_f.close()


if __name__ == "__main__":
    cm = CyrilicsMapper()