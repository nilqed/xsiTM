#include <stdio.h>
#include "setup.h"
#include "clips.h"
#include "usrsetup.h"
#include "xsi-base.h"
#include "commline.h"


// TeXmacs protocol -> constant.h
#define DATA_BEGIN   "\x02"
#define DATA_END     "\x05"
#define DATA_COMMAND "\x16"
#define DATA_ESCAPE  "\x27"



// Return the XSI version number as a float.
double xsi_version()
{	
  return(XSI_VERSION_FLOAT);
}

// DATA_OBJECT_PTR -> Long Integer
long xsi_get_integer(DATA_OBJECT_PTR dobj)
{
  return(DOPToInteger(dobj));    
}

// DATA_OBJECT_PTR -> Long long Integer
long long xsi_get_long(DATA_OBJECT_PTR dobj)
{
  return(DOPToLong(dobj));    
}

// DATA_OBJECT_PTR -> Float
float xsi_get_float(DATA_OBJECT_PTR dobj)
{
  return(DOPToFloat(dobj));    
}

// DATA_OBJECT_PTR -> Double
double xsi_get_double(DATA_OBJECT_PTR dobj)
{
  return(DOPToDouble(dobj));    
}

// DATA_OBJECT_PTR -> String
char *xsi_get_string(DATA_OBJECT_PTR dobj)
{
  return(DOPToString(dobj));    
}

// DATA_OBJECT_PTR -> Pointer
void *xsi_get_pointer(DATA_OBJECT_PTR dobj)
{
  return(DOPToPointer(dobj));    
}

// DATA_OBJECT_PTR -> Type of object
int xsi_get_type(DATA_OBJECT_PTR dobj)
{
  return(GetpType(dobj));	
}

// DATA_OBJECT_PTR -> Length of object 
//(makes sense only if a multifield)
int xsi_get_length(DATA_OBJECT_PTR dobj)
{
  return(GetpDOLength(dobj));
}

// DATA_OBJECT_PTR -> Begin index of a MF obj
int xsi_get_begin(DATA_OBJECT_PTR dobj)
{
  return(GetpDOBegin(dobj));
}

// DATA_OBJECT_PTR -> End index of a MF obj
int xsi_get_end(DATA_OBJECT_PTR dobj)
{
  return(GetpDOEnd(dobj));
}

// DATA_OBJECT_PTR, fieldPos  -> Type of field at fieldPos 
int xsi_get_mf_type(DATA_OBJECT_PTR dobj, int fieldPos)
{
  void *multifieldPtr;
  multifieldPtr = GetpValue(dobj);
  return(GetMFType(multifieldPtr, fieldPos));
}

// DATA_OBJECT_PTR, fieldPos -> Value of field at fieldPos
void *xsi_get_mf_value(DATA_OBJECT_PTR dobj, int fieldPos)
{
  void *multifieldPtr;
  multifieldPtr = GetpValue(dobj);
  return(GetMFValue(multifieldPtr, fieldPos));
}

// value -> string
char *xsi_value_to_string(void *value)
{
  return(ValueToString(value));
}

// value to double
double xsi_value_to_double(void *value)
{
  return(ValueToDouble(value));
}

// value to long long
long long xsi_value_to_long(void *value)
{
  return(ValueToLong(value));
}

///////////////////////////////////////////////////////////////////////////////
/// TeXmacs specific
///////////////////////////////////////////////////////////////////////////////
void xsi_input_done()
{  

  DATA_OBJECT temp; 
  char* src;
  //void *returnValue; 
  
  if (ArgCountCheck("input-done?",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("input-done?",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  strcat(src,"\n") ;
  
  if (CompleteCommand(src) == 1) 
    {
      //returnValue = AddSymbol("\x02scheme:#t\x05") ;
      printf(DATA_BEGIN) ;
      printf("scheme:#t") ;
      printf(DATA_END) ;
    }
  else
    {
      //returnValue = AddSymbol("\x02scheme:#f\x05") ;
      printf(DATA_BEGIN) ;
      printf("scheme:#f") ;
      printf(DATA_END) ;
    }
  
  //return(returnValue); 
} 


// (tex "$\\hbar$") -> latex rendering
void xsi_tex()
{ 
 DATA_OBJECT temp; 
 char* src;
    
  if (ArgCountCheck("input-done?",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("input-done?",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  printf(DATA_BEGIN) ;
  printf("latex:%s", src) ;
  printf(DATA_END) ;
  return ;
}


// (scm "(define X 1)") -> scheme code
void xsi_scm()
{ 
 DATA_OBJECT temp; 
 char* src;
    
  if (ArgCountCheck("scm",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("scm",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  printf(DATA_BEGIN) ;
  printf("scheme:%s", src) ;
  printf(DATA_END) ;
  return ;
}

// (cmd "...") send scheme commands TeXmacs
void xsi_cmd()
{ 
 DATA_OBJECT temp; 
 char* src;
    
  if (ArgCountCheck("cmd",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("cmd",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  printf(DATA_BEGIN) ;
  printf("command:%s", src) ;
  printf(DATA_END) ;
  return ;
}

// (html "...") send html to TeXmacs
void xsi_html()
{ 
 DATA_OBJECT temp; 
 char* src;
    
  if (ArgCountCheck("html",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("html",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  printf(DATA_BEGIN) ;
  printf("html:%s", src) ;
  printf(DATA_END) ;
  return ;
}

// (pscript "...") send postscript to TeXmacs
void xsi_pscript()
{ 
 DATA_OBJECT temp; 
 char* src;
    
  if (ArgCountCheck("pscript",EXACTLY,1) == -1){return;}
  if (ArgTypeCheck("pscript",1,STRING,&temp) == 0){return;} 
  
  src =  DOToString(temp); 
  printf(DATA_BEGIN) ;
  printf("ps:%s", src) ;
  printf(DATA_END) ;
  return ;
}