// $Id: xsi-base.h 42 2009-01-30 02:42:03Z scios $

double xsi_version(void);
long xsi_get_integer(DATA_OBJECT_PTR dobj);
long long xsi_get_long(DATA_OBJECT_PTR dobj);
float xsi_get_float(DATA_OBJECT_PTR dobj);
double xsi_get_double(DATA_OBJECT_PTR dobj);
char *xsi_get_string(DATA_OBJECT_PTR dobj);
void *xsi_get_pointer(DATA_OBJECT_PTR dobj);
int xsi_get_type(DATA_OBJECT_PTR dobj);
int xsi_get_length(DATA_OBJECT_PTR dobj);
int xsi_get_begin(DATA_OBJECT_PTR dobj);
int xsi_get_end(DATA_OBJECT_PTR dobj);
int xsi_get_mf_type(DATA_OBJECT_PTR dobj, int fieldPos);
void *xsi_get_mf_value(DATA_OBJECT_PTR dobj, int fieldPos);
char *xsi_value_to_string(void *value);
double xsi_value_to_double(void *value);
long long xsi_value_to_long(void *value);

void xsi_input_done() ;
void xsi_tex() ;
void xsi_scm() ;
void xsi_cmd() ;
void xsi_html() ;
void xsi_pscript() ;
