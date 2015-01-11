/*
 *
 *
 *
 *
 *
 *
 *
 */

#pragma once
#include <string>

using namespace std;

class ZCommandParse
{
public:
    ZCommandParse(void);
    ZCommandParse(int argc, const char* argv[]);
    ~ZCommandParse(void);

    template<typename T>T Get(const string& name);
    template<typename T>T Get(int Index);

//private:
//    optionType m_options;
//    map<string, optionType>     m_mapStringOptions;
//    map<string, string>         m_mapArgs;
//    map<optionType, string>     m_mapOptionString;
//    vector<string>              m_vecFilePath;
};
