# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0201010F0AAAPAP","system":"bnf"},{"code":"0201010F0BBAEAA","system":"bnf"},{"code":"0201010F0BBABAF","system":"bnf"},{"code":"0201010F0AAAAAA","system":"bnf"},{"code":"0201010F0BEACAF","system":"bnf"},{"code":"0201010F0AAAQAQ","system":"bnf"},{"code":"0201010F0AAAFAF","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-medication-50microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-medication-50microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-medication-50microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
