#include "4-3_2.h"

NameCard::NameCard(char* n, char* c_name, char* p_num, int c_pos)
    : name(n), company_name(c_name), phone_num(p_num), comp_pos(c_pos)
{ /* empty constructor */ }

void NameCard::ShowNameCardInfo() const
{
    cout << "이름: " << name << endl;
    cout << "회사: " << company_name << endl;
    cout << "전화번호: " << phone_num << endl;
    cout << "직급: ";

    switch(comp_pos){
        case COMP_POS::CLERK:
            cout << "사원" << endl;
            break;
        case COMP_POS::SENIOR:
            cout << "주임" << endl;
            break;
        case COMP_POS::ASSIST:
            cout << "대리" << endl;
            break;
        case COMP_POS::MANAGER:
            cout << "과장" << endl;
            break;
    }
}

