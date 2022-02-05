#! /usr/bin/python

number = str(raw_input("masukan angka:"));

def htoi(number):
    hasil=0;
    flag=0;
    base=1;
    uji='0';
    i=0;

    number = number.lower()
    while i < len(number):
        print("check char=",number[i],i)
        if(number[i].isspace()):
            pass
        elif(number[i].isalpha() and (number[i] >= 'a' or number[i]<='f'\
                or number[i] == 'x')):
            if(number[i] == 'x' and flag):
                return -1
            else:
                hasil += (ord(number[i]) - ord('a') + 10) * base;
                base*=16;
        elif(number[i].isdigit()):
            if(number[i] == '0' and number[i+1] == 'x'):
                if(flag):
                    return -1
                else:
                    print("dalam 0x checking")
                    flag=1
                    i+=2;
                    continue
            hasil += (ord(number[i]) - ord('0')) * base;
            base *=16
        else:
            return -1
        i+=1
    return hasil

# percobaan #
if(htoi(number)!= -1):
    print ("nilai desimal dari",number,"=",str(htoi(number)))
else:
    print(number,"memiliki format salah.")
