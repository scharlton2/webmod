#ifndef _INC_IPHREEQC_H
#define _INC_IPHREEQC_H

#include "IPhreeqcCallbacks.h"   /* PFN_PRERUN_CALLBACK, PFN_POSTRUN_CALLBACK, PFN_CATCH_CALLBACK */
#include "Var.h"                 /* VRESULT */

#if defined(__cplusplus)
extern "C" {
#endif

/**
 *  Load the specified database file into phreeqc.
 *  @param filename The name of the phreeqc database to load.
 *         The full path will be required if the file is not
 *         in the current working directory.
 *  @return The number of errors encountered.
 *  @remarks
 *  Any previous database definitions are cleared.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION LoadDatabase(FILENAME)
 *    CHARACTER(LEN=*), INTENT(IN) :: FILENAME
 *    INTEGER :: LoadDatabase
 *  END FUNCTION LoadDatabase
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     LoadDatabase(const char *filename);

/**
 *  Load the specified string as a database into phreeqc.
 *  @param input String containing data to be used as the phreeqc database.
 *  @return The number of errors encountered.
 *  @remarks
 *  Any previous database definitions are cleared.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION LoadDatabaseString(INPUT)
 *    CHARACTER(LEN=*), INTENT(IN) :: INPUT
 *    INTEGER :: LoadDatabaseString
 *  END FUNCTION LoadDatabaseString
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     LoadDatabaseString(const char *input);

/**
 *  Unload any database currently loaded into phreeqc.
 *  @remarks
 *  Any previous database definitions are cleared.
 */
void    UnLoadDatabase(void);

/** 
 *  Output the error messages normally stored in the phreeqc.err file to stdout.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE OutputLastError
 *  END SUBROUTINE OutputLastError
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void    OutputLastError(void);

/**
 *  Accumlulate lines for input to phreeqc.
 *  @param line The line(s) to add for input to phreeqc.
 *  @retval VR_OK Success
 *  @retval VR_OUTOFMEMORY Out of memory
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION AccumulateLine(LINE)
 *    CHARACTER(LEN=*), INTENT(IN) :: LINE
 *    INTEGER :: AccumulateLine
 *  END FUNCTION AccumulateLine
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
VRESULT AccumulateLine(const char *line);

/**
 *  Sets the selected_output flag on or off
 *  @param selected_output_on If non-zero turns on output to the <B>SELECTED_OUTPUT</B> (<B>selected.out</B> if unspecified) file.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE SetSelectedOutputOn(SELECTED_ON)
 *    LOGICAL, INTENT(IN) :: SELECTED_ON
 *  END SUBROUTINE SetSelectedOutputOn
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void SetSelectedOutputOn(int selected_output_on);


/**
 *  Sets the output flag on or off
 *  @param output_on          If non-zero turns on output to the <B>phreeqc.out</B> file.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE SetOutputOn(OUTPUT_ON)
 *    LOGICAL, INTENT(IN) :: OUTPUT_ON
 *  END SUBROUTINE SetOutputOn
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void SetOutputOn(int output_on);


/**
 *  Sets the error flag on or off
 *  @param error_on           If non-zero turns on output to the <B>phreeqc.err</B> file.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE SetErrorOn(ERROR_ON)
 *    LOGICAL, INTENT(IN) :: ERROR_ON
 *  END SUBROUTINE SetOutputOn
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void SetErrorOn(int error_on);


/**
 *  Sets the log flag on or off
 *  @param log_on             If non-zero turns on output to the <B>phreeqc.log</B> file.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE SetLogOn(LOG_ON)
 *    LOGICAL, INTENT(IN) :: LOG_ON
 *  END SUBROUTINE SetLogOn
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void SetLogOn(int error_on);


/**
 *  Runs the accumulated input sent to AccumulateLine.
 *  @return The number of errors encountered.
 *  @remarks
 *  The accumulated input is cleared upon completion.
 *  @pre LoadDatabase/LoadDatabaseString must have been called and returned 0 (zero) errors.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION Run()
 *    INTEGER :: Run
 *  END FUNCTION Run
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     Run(void);


/**
 *  Runs the specified phreeqc input file.
 *  @param filename           The name of the phreeqc input file to run.
 *  @return The number of errors encountered during the run.
 *  @pre LoadDatabase/LoadDatabaseString must have been called and returned 0 (zero) errors.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION RunFile(FILENAME)
 *    CHARACTER(LEN=*)    :: FILENAME
 *    INTEGER :: RunFile
 *  END FUNCTION RunFile
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     RunFile(const char *filename);


/**
 *  Runs the specified string as input to phreeqc.
 *  @param input              String containing phreeqc input.
 *  @return The number of errors encountered during the run.
 *  @pre LoadDatabase/LoadDatabaseString must have been called and returned 0 (zero) errors.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION RunString(INPUT)
 *    CHARACTER(LEN=*)    :: INPUT
 *    INTEGER :: RunString
 *  END FUNCTION RunString
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     RunString(const char *input);


/**
 *  Returns the number of rows currently contained within selected_output.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION GetSelectedOutputRowCount
 *    INTEGER :: GetSelectedOutputRowCount
 *  END FUNCTION GetSelectedOutputRowCount
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     GetSelectedOutputRowCount(void);

/**
 *  Returns the number of columns currently contained within selected_output.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION GetSelectedOutputColumnCount
 *    INTEGER :: GetSelectedOutputColumnCount
 *  END FUNCTION GetSelectedOutputColumnCount
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
int     GetSelectedOutputColumnCount(void);

/**
 *  Returns the \c VAR associated with the specified row and column.
 *  @param row  The row index.
 *  @param col  The column index.
 *  @param pVAR Pointer to the \c VAR to recieve the requested data.
 *  @retval VR_OK Success
 *  @retval VR_INVALIDROW The given row is out of range.
 *  @retval VR_INVALIDCOL The given column is out of range.
 *  @retval VR_OUTOFMEMORY Memory could not be allocated.
 *  @remarks
 *  Row 0 contains the column headings to the selected_ouput.
 *  @par Examples:
 *  The headings will include a suffix and/or prefix in order to differentiate the 
 *  columns.
 *  @htmlonly
<p>
<table border=1>

<TR VALIGN="top">
<TH width=65%>
Input
</TH>
<TH width=35%>
Headings
</TH>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -totals Ca Na
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  Ca(mol/kgw)  Na(mol/kgw)
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -molalities Fe+2 Hfo_sOZn+
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  m_Fe+2(mol/kgw)  m_Hfo_sOZn+(mol/kgw)
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -activities H+ Ca+2
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  la_H+  la_Ca+2
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -equilibrium_phases Calcite Dolomite
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  Calcite  d_Calcite  Dolomite  d_Dolomite
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -saturation_indices CO2(g) Siderite
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  si_CO2(g)  si_Siderite
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -gases CO2(g) N2(g)
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  pressure "total mol" volume g_CO2(g) g_N2(g)
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -kinetic_reactants CH2O Pyrite
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  k_CH2O dk_CH2O k_Pyrite dk_Pyrite
</PRE></CODE>
</TD>
</TR>

<TR VALIGN="top">
<TD width=65%>
<CODE><PRE>
  SELECTED_OUTPUT
    -reset false
    -solid_solutions CaSO4 SrSO4
</PRE></CODE>
</TD>
<TD width=35%>
<CODE><PRE>
  s_CaSO4 s_SrSO4
</PRE></CODE>
</TD>
</TR>

</table>
 *  @endhtmlonly
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  FUNCTION GetSelectedOutputValue(ROW,COL,VTYPE,DVALUE,SVALUE)
 *    INTEGER,          INTENT(IN)  :: ROW
 *    INTEGER,          INTENT(IN)  :: COL
 *    INTEGER,          INTENT(OUT) :: VTYPE
 *    REAL*8,           INTENT(OUT) :: DVALUE
 *    CHARACTER(LEN=*), INTENT(OUT) :: SVALUE
 *    INTEGER :: GetSelectedOutputValue
 *  END FUNCTION GetSelectedOutputValue
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
VRESULT GetSelectedOutputValue(int row, int col, VAR* pVAR);

/**
 *  Appends the given error message and increments the error count.
 *  Internally used to create an error condition.
 *  @internal
 */
size_t  AddError(const char* error_msg);

/**
 *  TODO
 *  @internal
 */
/*
void ClearErrors(void);
*/


/** 
 *  Send the accumulated input to stdout. 
 *  This is the input that will be used for the next call to Run.
 *  @par Fortran90 Interface:
 *  @htmlonly
 *  <CODE>
 *  <PRE>
 *  SUBROUTINE OutputLines
 *  END SUBROUTINE OutputLines
 *  </PRE>
 *  </CODE>
 *  @endhtmlonly
 */
void    OutputLines(void);


int RunWithCallback(PFN_PRERUN_CALLBACK pfn_pre, PFN_POSTRUN_CALLBACK pfn_post, void *cookie, int output_on, int error_on, int log_on, int selected_output_on);

int CatchErrors(PFN_CATCH_CALLBACK pfn, void *cookie);

const char* GetLastErrorString(void);

#if defined(WIN32)
void DebugOutputLines(void);
#endif


#if defined(__cplusplus)
}
#endif

#endif /* _INC_IPHREEQC_H */
