#pragma once
#include "stdafx.h"

#include "gdcmReader.h"
#include "gdcmWriter.h"
#include "gdcmAttribute.h"
#include "gdcmAnonymizer.h"
using namespace gdcm;

class ZDicomDS
{
public:
    ZDicomDS(void);
    
    ~ZDicomDS(void);

    int loadDcmFile(const string strFilename);

    int anonymize(const string strFilename);
    int anonymizeSingle(const char* filename,
                        const char* outfilename, 
                        const vector<Tag>& vempt_tag,                          
                        const vector<Tag>& vremove_tag,
                        const vector<pair<Tag, string>>& vreplace_tag);

protected:
    int loadVectorfromXML(const char* filename);

    vector<Tag> m_vemptTag;
    vector<Tag> m_vremoveTag;
    vector<pair<Tag, string>> m_replaceTag;
  
};
