# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0203020D0AACFCF","system":"bnf"},{"code":"0203020I0AABSBS","system":"bnf"},{"code":"0204000T0AABCBC","system":"bnf"},{"code":"0203020I0AABBBB","system":"bnf"},{"code":"0203020D0AABFBF","system":"bnf"},{"code":"0203020I0AAARAR","system":"bnf"},{"code":"0203020I0AABMBM","system":"bnf"},{"code":"0203020I0AAAYAY","system":"bnf"},{"code":"0204000T0AAATAT","system":"bnf"},{"code":"0201010F0BBAAAE","system":"bnf"},{"code":"0203020D0AAAXAX","system":"bnf"},{"code":"0203020D0AAAWAW","system":"bnf"},{"code":"0203020I0AABRBR","system":"bnf"},{"code":"0204000T0AAAWAW","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-medication-125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-medication-125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-medication-125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
