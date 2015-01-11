// dcmanonymizer.cpp : Defines the entry point for the console application.
//
#include "stdafx.h"
#include "ZDicomDS.h"
#include "ZCmdPara.h"


int main(int argc, char* argv[])
{
    string strExecName = argv[0];
    string strCmd;
  /*  if (argc>1)
    {
        strCmd.assign(argv+1,argv+argc);
    }
    else
    {
        return 0;
    }*/

    /*ZCmdParam cmd;
    cmd.Parse(argc, strCmd);*/

    ZDicomDS ds;
    //ds.anonymizeSingle(argv[1],"c:\\outfile.dcm");


	return 0;
}

