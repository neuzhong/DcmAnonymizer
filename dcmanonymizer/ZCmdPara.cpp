#include "ZCmdPara.h"
#include "rapidxml.hpp"

ZCmdParam::ZCmdParam(void)
{
}

ZCmdParam::~ZCmdParam(void)
{
}

int ZCmdParam::LoadOpt(const string strXMLFile)
{
    //rapidxml::xml_document<> doc("config.xml");


    return 0;
}

int ZCmdParam::Parse(int argc, const string args)
{
    vector<string> vecArgs;
   
    // Loop through the arguments and parse to <option, paras> map	
    /*optionType opt;
    for (int i=1;i<argc;)
    {		
        string str = (string)CW2A(lpszArgv[i]);	
        transform(str.begin(),str.end(),str.begin(),::tolower);
        opt = (optionType)TranslateOptions(str);		
        if (opt!=-1)
        {
            i++;
            str = (string)CW2A(lpszArgv[i]);	
            transform(str.begin(),str.end(),str.begin(),::tolower);
            string strpara;
            while(TranslateOptions(str)==-1)
            {				
                strpara += str+" ";		
                if (i==argc-1)
                {
                    break;
                }
                str = (string)CW2A(lpszArgv[i+1]);
                transform(str.begin(),str.end(),str.begin(),::tolower);
                i++;

            }
            m_mapOptionsString[opt] = strpara;			
        }
        else
            i++;
    }*/

   

    return 0;
}