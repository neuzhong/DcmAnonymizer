#pragma once
#include "stdafx.h"

typedef enum 
{
    HELP,
    VERSION,
    DCMFILE,
    XMLFILE,
    ANONYMIZE
    
}optionType;

class ZCmdParam
{
public:
    ZCmdParam(void);
    ~ZCmdParam(void);
    int     Parse(int argc, const string args);
    int     Exec();
    int     LoadOpt(const string strXMLFile);


private:
    optionType m_options;
    map<string, optionType>     m_mapStringOptions;
    map<string, string>         m_mapArgs;
    map<optionType, string>     m_mapOptionString;
    vector<string>              m_vecFilePath;

};
