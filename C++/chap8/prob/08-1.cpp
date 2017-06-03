#include <iostream>
#include <cstring>

using namespace std;

namespace RISK_LEVEL
{
    enum { RISK_A=30,RISK_B=20,RISK_C=10 };
};

class Employee
{
private:
    char name[100];
public:
    Employee(char *name)
    {
        strcpy(this->name, name);
    }
    void ShowYourName() const
    {
        cout<<"name: "<<name<<endl;
    }
    virtual int GetPay() const
    {
        return 0;
    }
    virtual void ShowSalarInfo() const
    { }
};

class PermanentWorker : public Employee
{
private:
    int salary;
public:
    PermanentWorker(char *name, int money)
        : Employee(name), salary(money)
    { }
    int GetPay() const
    {
        return salary;
    }
    void ShowSalarInfo() const
    {
        ShowYourName();
        cout<<"salary: "<<GetPay()<<endl<<endl;
    }
};

class TemporaryWorker : public Employee
{
private:
    int workTime;
    int payPerHour;
public:
    TemporaryWorker(char *name, int pay)
        : Employee(name), workTime(0), payPerHour(pay)
    { }
    void AddWorkTime(int time)
    {
        workTime+=time;
    }
    int GetPay() const
    {
        return workTime*payPerHour;
    }
    void ShowSalarInfo() const
    {
        ShowYourName();
        cout<<"salary: "<<GetPay()<<endl<<endl;
    }
};

class SalesWorker : public PermanentWorker
{
private:
    int salesResult;
    double bonusRatio;
public:
    SalesWorker(char *name, int money, double ratio)
        : PermanentWorker(name,money), salesResult(0), bonusRatio(ratio)
    { }
    void AddSalesResult(int value)
    {
        salesResult+=value;
    }
    int GetPay() const
    {
        return PermanentWorker::GetPay()
            + (int)(salesResult*bonusRatio);
    }
    void ShowSalarInfo() const
    {
        ShowYourName();
        cout<<"salary: "<<GetPay()<<endl<<endl;
    }
};

class ForeignSalesWorker : public SalesWorker
{
private:
    double WarningBonus;
public:
    ForeignSalesWorker(char *name, int money, double ratio, double Warning)
        : SalesWorker(name,money,ratio), WarningBonus(Warning)
    { }
    int GetPay() const
    {
        int BasicSalary = SalesWorker::GetPay();
        return BasicSalary + BasicSalary * (WarningBonus/100.0);
    }
    void ShowSalarInfo() const
    {
        ShowYourName();
        cout<<"salary: "<<GetPay()<<endl<<endl;
    }
};

class EmployeeHandler
{
private:
    Employee* empList[50];
    int empNum;
public:
    EmployeeHandler() : empNum(0)
    { }
    void AddEmployee(Employee* emp)
    {
        empList[empNum++]=emp;
    }
    void ShowAllSalaryInfo() const
    {
        for(int i = 0; i <empNum; i++)
            empList[i]->ShowSalarInfo();
    }
    void ShowTotalSalary() const
    {
        int sum=0;
        for(int i = 0; i <empNum; i++)
            sum+=empList[i]->GetPay();
        cout<<"salary sum: "<<sum<<endl;
    }
    ~EmployeeHandler()
    {
        for(int i = 0; i < empNum; i++)
            delete empList[i];
    }
};

int main(void)
{
    EmployeeHandler handler;

    ForeignSalesWorker *fseller1=new ForeignSalesWorker("Hong",1000,0.1, RISK_LEVEL::RISK_A);
    fseller1->AddSalesResult(7000);
    handler.AddEmployee(fseller1);

    ForeignSalesWorker *fseller2=new ForeignSalesWorker("Yoon",1000,0.1, RISK_LEVEL::RISK_B);
    fseller2->AddSalesResult(7000);
    handler.AddEmployee(fseller2);

    ForeignSalesWorker *fseller3=new ForeignSalesWorker("Lee",1000,0.1, RISK_LEVEL::RISK_C);
    fseller3->AddSalesResult(7000);
    handler.AddEmployee(fseller3);

    handler.ShowAllSalaryInfo();
    return 0;
}
