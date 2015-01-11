
typedef struct _IMAGE_INFO
{
	char SOPInstanceUID[255];
	char SeriesInstanceUID[255];
	char SOPClassUID[255];
	char TransferSyntax[255];
	char InstanceNumber[50];
	char AcquisitionTime[20];
	char AcquisitionDate[20];	
	char SliceLocation[10];
	char SliceThickness[10];
	char NumberOfFrames[50];
	char PixelSpacing[10];
	char WindowWidth[10];
	char WindowLevel[10];
	char Rows[10];
	char Columns[10];
	char BitsAllocated[10];
	char BitsStored[10];
	char HighBit[10];
	char LossyImageCompression[255];
	char Manufacturer[50];
	char ManufacturersModelName[50];
	char ImagePositionPatient[50];
	char ImageOrientationPatient[50];
	char ReferencefileID[255];
	_IMAGE_INFO()
	{
		memset(this,0,sizeof(_IMAGE_INFO));		
	};
} IMAGE_INFO, *PIMAGE_INFO;


typedef struct _SERIES_INFO
{
	char SeriesInstanceUID[255];
	char StudyInstanceUID[255];
	char SeriesNumber[50];
	char Modality[50];
	char OperatorName[50];
	char BodyPartExamined[50];
	char NumberOfImages[50];	
	char PerformingPhysiciansName[50];
	char PatientPosition[50];
	char ProtocolName[50];
	time_t SeriesDate;
	time_t SeriesTime;
	char SeriesDescription[255];
	char SeriesComments[255];

	//	CList<IMAGE_INFO,IMAGE_INFO> lsIMG;

	_SERIES_INFO()
	{
		memset(this,0,sizeof(_SERIES_INFO));		
	};
} SERIES_INFO, *PSERIES_INFO;


//...Study information
typedef struct _STUDY_INFO
{
	char StudyInstanceUID[255]; 
	char PatientID[50];
	char StudyID[50];
	time_t StudyDate;
	time_t StudyTime;
	char Disease[50];
	char AccessionNumber[50];
	char ReferringPhysiciansName[50];	
	char NameOfPhysiciansReadingStudy[50];
	char InstitutionName[50];
	char AdmittingDiagnosesDescription[255];
	char InstitutionalDepartmentName[50];
	char StudyDescription[255];

	//	CList<SERIES_INFO,SERIES_INFO> lsSE;

	_STUDY_INFO()
	{
		memset(this,0,sizeof(_STUDY_INFO));		
	};
} STUDY_INFO, *PSTUDY_INFO;

typedef struct _PATIENT_INFO
{
	char PatientID[50];
	char PatientName[50];
	char PatientSex;
	char PatientAge[10];
	char PatientTel[50];
	char PatientAddress[50];
	char PatientComments[255];
	char PatientBirthDate[20];
	char PatientBirthTime[20];
	char PatientHeight[10];
	char PatientWeight[10];
	char PatientEthnicGroup[50];
	long PatientUID;
	long FileStatus;
	long DicomStatus;
	time_t RgstTime; // the time of the study load into the database

	//	CList<STUDY_INFO,STUDY_INFO> lsST;

	_PATIENT_INFO()
	{
		memset(this,0,sizeof(_PATIENT_INFO));		
		PatientUID=-1;
	};
} PATIENT_INFO,*PPATIENT_INFO;



typedef struct tagSDS3D
{
	short** m_pData;
	short** m_pMark;
	short m_nSliceNumber; 
	short m_nSliceWidth;
	short m_nSliceHeight;
	float m_fSliceSpace;
	float m_fHeightFov;
	float m_fWidthFov;
	float m_orientation[9];
	int   m_nOrientationType;

}SDS3D, FAR* LPSDS3D;


typedef struct tagSDSF3
{
	float x;
	float y;
	float z;
}SDSF3, FAR* LPSDSF3;

typedef struct tagSDSF2
{
	float x;
	float y;
}SDSF2, FAR* LPSDSF2;

//////////////////////////////////////////////////////////////////////////
// Mouse action
# define MA_N                       0
# define MA_WL                      1
# define MA_PAN                     2
# define MA_ZOOM                    3
# define MA_ROTATE                  4
# define MA_THD_ROT                 5
# define MA_THD_CUT                 6
# define MA_SEG_THRSEG              7
# define MA_SEG_RGNSEG              8
# define MA_SEG_SELSLICERANGE       9
# define MA_SEG_MODUD               10
# define MA_SEG_SGLRGN              11
# define MA_MPR_BIAS                12
# define MA_MPR_CURVE               13
# define MA_VE_SELPOS               14
# define MA_VE_GO                   15
# define MA_SASBMP                  16
# define MA_ARROW                   17