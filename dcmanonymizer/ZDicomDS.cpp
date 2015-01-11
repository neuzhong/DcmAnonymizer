/*
 *
 *
 *
 *
 *
 *
 *
 */

#include "ZDicomDS.h"
#include "rapidxml.hpp"





ZDicomDS::ZDicomDS(void)
{
}


ZDicomDS::~ZDicomDS(void)
{
}

int ZDicomDS::loadDcmFile(const string strFilename)
{
    Reader reader;
    reader.SetFileName(strFilename.c_str());
  

    return 0;
}

int ZDicomDS::anonymize(const string strFilename)
{

    Reader reader;
    reader.SetFileName( strFilename.c_str() );
    if( !reader.Read() )
    {
        std::cerr << "Could not read: " << strFilename << std::endl;
        return 1;
    }
    // The output of gdcm::Reader is a gdcm::File
    File &file = reader.GetFile();

    // the dataset is the the set of element we are interested in:
    DataSet &ds = file.GetDataSet();

    // Contruct a static(*) type for Image Comments :
    Attribute<0x0020,0x4000> imagecomments;
    imagecomments.SetValue( "Hello, World !" );
   


    // Now replace the Image Comments from the dataset with our:
    ds.Replace( imagecomments.GetAsDataElement() );

    // Write the modified DataSet back to disk
    gdcm::Writer writer;
    writer.CheckFileMetaInformationOff(); // Do not attempt to reconstruct the file meta to preserve the file
    // as close to the original as possible.
    writer.SetFileName( strFilename.c_str() );
    writer.SetFile( file );
    if( !writer.Write() )
    {
        std::cerr << "Could not write: " << strFilename << std::endl;
        return 1;
    }
    return 0;
}


int ZDicomDS::anonymizeSingle(const char* filename,
                              const char* outfilename,
                              const vector<Tag>& vempt_tag,
                              const vector<Tag>& vremove_tag,
                              const vector<pair<Tag, string>>& vreplace_tag )
{
    Anonymizer anon;
    Reader reader;
    reader.SetFileName( filename );
    if( !reader.Read() )
    {
        std::cerr << "Could not read : " << filename << std::endl;
        return 1;
    }
    
    File &file = reader.GetFile();  
    anon.SetFile( file );
  
    if (vremove_tag.empty() && vreplace_tag.empty() && vempt_tag.empty() )
    {
        return 1;
    }

    vector<Tag>::const_iterator it = vempt_tag.begin();

    for (; it != vempt_tag.end(); it++)
    {
        anon.Empty(*it);
    }

    it = vremove_tag.begin();
    for (; it != vremove_tag.end(); it++)
    {
        anon.Remove(*it);
    }

    vector<pair<Tag,string>>::const_iterator it1 = vreplace_tag.begin();
    for (; it1 != vreplace_tag.end(); it1++)
    {
        anon.Replace(it1->first, it1->second.c_str());
    }

    Writer writer;
    writer.SetFileName( outfilename );
    writer.SetFile( file );
    if( !writer.Write() )
    {
       return false;
    }
    return 0;
}

int ZDicomDS::loadVectorfromXML(const char* filename)
{
    xml_document doc;
    ifstream file(filename);
    if (file.bad())
    {
        cerr<<"failed load xml file!"<<endl;
        file.close();
        return 1;
    }
    stringstream buffer;

    buffer<<file.rdbuf();
    file.close();
    string content(buffer.str());

    doc.parse<0>(&content[0]);

    xml_node<> *proot = doc.first_node();


    return 0;
}