using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebDevFinalProject
{
    public class DataTier
    {
        static String connString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        static SqlConnection myConn = new SqlConnection(connString);
        static System.Data.SqlClient.SqlCommand cmdString = new System.Data.SqlClient.SqlCommand();

        public DataSet getAllRefillsStandard()
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "getAllRefillsStandard";

                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet getAllPatientsStandard()
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "getAllPatientsStandard";

                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet getAllPhysicianStandard()
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "getAllPhysicianStandard";

                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet getAllPrescriptionStandard()
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "getAllPrescriptionStandard";

                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        //public Boolean UpdateRefill(Int32 refillID, string rxNumber, Int32 count, Int32 limit, string date)
        //{

        //    try
        //    {
        //        //open connection
        //        myConn.Open();
        //        cmdString.Parameters.Clear();

        //        // command
        //        cmdString.Connection = myConn;
        //        cmdString.CommandType = CommandType.StoredProcedure;
        //        cmdString.CommandTimeout = 1500;
        //        cmdString.CommandText = "updateRefill";

        //        // Define input parameter
        //        cmdString.Parameters.Add("@REFILL_ID", SqlDbType.Int).Value = refillID;
        //        cmdString.Parameters.Add("@RX_NUMBER", SqlDbType.VarChar, 6).Value = rxNumber;
        //        cmdString.Parameters.Add("@REFILL_REMAINING_COUNT", SqlDbType.Int).Value = count;
        //        cmdString.Parameters.Add("@REFILL_COUNT", SqlDbType.Int).Value = limit;
        //        cmdString.Parameters.Add("@DATEFILL", SqlDbType.Date).Value = date;

        //        //execute statement
        //        cmdString.ExecuteNonQuery();
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new ArgumentException(ex.Message);
        //    }
        //    finally
        //    {
        //        myConn.Close();

        //    }
        //}

        public void AddPatient(string patid, string fname, string midinit, string lname, string dob, string gender, decimal acctbal, string addressOne, string city, string state, string zip, string homePhone, string workPhone, string cellPhone, string workEmail, string personalEmail)
        {
            try
            {
                //open connection
                myConn.Open();
                cmdString.Parameters.Clear();

                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "add_patient";

                // Define input parameter
                cmdString.Parameters.Add("@Patient_id", SqlDbType.VarChar, 6).Value = patid;
                cmdString.Parameters.Add("@fname", SqlDbType.VarChar, 25).Value = fname;
                cmdString.Parameters.Add("@lname", SqlDbType.VarChar, 25).Value = lname;
                cmdString.Parameters.Add("@midinit", SqlDbType.Char, 1).Value = midinit;
                cmdString.Parameters.Add("@dob", SqlDbType.VarChar).Value = dob;
                cmdString.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = gender;
                cmdString.Parameters.Add("@acct_bal", SqlDbType.Decimal).Value = acctbal;
                cmdString.Parameters.Add("@Work_Email", SqlDbType.VarChar, 60).Value = workEmail;
                cmdString.Parameters.Add("@Personal_Email", SqlDbType.VarChar, 60).Value = personalEmail;
                cmdString.Parameters.Add("@Home_Phone", SqlDbType.VarChar, 15).Value = homePhone;
                cmdString.Parameters.Add("@Cell_Phone", SqlDbType.VarChar, 15).Value = cellPhone;
                cmdString.Parameters.Add("@Work_Phone", SqlDbType.VarChar, 15).Value = workPhone;
                cmdString.Parameters.Add("@address_one", SqlDbType.VarChar, 60).Value = addressOne;
                cmdString.Parameters.Add("@city", SqlDbType.VarChar, 60).Value = city;
                cmdString.Parameters.Add("@PAT_state", SqlDbType.Char, 2).Value = state;
                cmdString.Parameters.Add("@ZIP", SqlDbType.VarChar, 10).Value = zip;

                //execute statement
                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public void AddPrescription(string patid, string Rxnum, string medname, string dosage, string startdate, string enddate, int refillcount, decimal presamount, string presinfo, string empid)
        {
            try
            {
                //open connection
                myConn.Open();
                cmdString.Parameters.Clear();

                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "addPrescription";

                // Define input parameter
                cmdString.Parameters.Add("@PatientID", SqlDbType.VarChar, 6).Value = patid;
                cmdString.Parameters.Add("@RXNUMBER", SqlDbType.VarChar, 6).Value = Rxnum;
                cmdString.Parameters.Add("@medNAME", SqlDbType.VarChar, 25).Value = medname;
                cmdString.Parameters.Add("@PresDosage", SqlDbType.VarChar, 25).Value = dosage;
                cmdString.Parameters.Add("@startDate", SqlDbType.Date).Value = startdate;
                cmdString.Parameters.Add("@endDate", SqlDbType.Date).Value = enddate;
                cmdString.Parameters.Add("@RefillAmount", SqlDbType.Int).Value = refillcount;
                cmdString.Parameters.Add("@PresAmount", SqlDbType.Decimal).Value = presamount;
                cmdString.Parameters.Add("@PhysicianID", SqlDbType.VarChar, 6).Value = empid;
                cmdString.Parameters.Add("@PresInfo", SqlDbType.VarChar, 50).Value = presinfo;

                //execute statement
                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);

            }
            finally
            {
                myConn.Close();
            }
        }

        public void AddPhysician(string phyid, string fname, string midinit, string lname, string dob, string gender, string hire_dt, decimal salary, string special1, string special2, string special3, string addressOne, string city, string state, string zip, string homePhone, string workPhone, string cellPhone, string workEmail, string personalEmail)
        {
            try
            {
                //open connection
                myConn.Open();
                cmdString.Parameters.Clear();

                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "add_physician";

                // Define input parameter
                cmdString.Parameters.Add("@Physician_ID", SqlDbType.VarChar, 6).Value = phyid;
                cmdString.Parameters.Add("@fname", SqlDbType.VarChar, 25).Value = fname;
                cmdString.Parameters.Add("@lname", SqlDbType.VarChar, 25).Value = lname;
                cmdString.Parameters.Add("@midinit", SqlDbType.Char, 1).Value = midinit;
                cmdString.Parameters.Add("@dob", SqlDbType.Date).Value = dob;
                cmdString.Parameters.Add("@gender", SqlDbType.Char, 6).Value = gender;
                cmdString.Parameters.Add("@hire_dt", SqlDbType.DateTime).Value = hire_dt;
                cmdString.Parameters.Add("@salary", SqlDbType.Decimal).Value = salary;
                cmdString.Parameters.Add("@Specialty_1", SqlDbType.VarChar, 25).Value = special1;
                cmdString.Parameters.Add("@Specialty_2", SqlDbType.VarChar, 25).Value = special2;
                cmdString.Parameters.Add("@Specialty_3", SqlDbType.VarChar, 25).Value = special3;
                cmdString.Parameters.Add("@Work_Email", SqlDbType.VarChar, 60).Value = workEmail;
                cmdString.Parameters.Add("@Personal_Email", SqlDbType.VarChar, 60).Value = personalEmail;
                cmdString.Parameters.Add("@Home_Phone", SqlDbType.VarChar, 15).Value = homePhone;
                cmdString.Parameters.Add("@Cell_Phone", SqlDbType.VarChar, 15).Value = cellPhone;
                cmdString.Parameters.Add("@Work_Phone", SqlDbType.VarChar, 15).Value = workPhone;
                cmdString.Parameters.Add("@address_one", SqlDbType.VarChar, 60).Value = addressOne;
                cmdString.Parameters.Add("@city", SqlDbType.VarChar, 60).Value = city;
                cmdString.Parameters.Add("@PHY_state", SqlDbType.Char, 2).Value = state;
                cmdString.Parameters.Add("@ZIP", SqlDbType.VarChar, 5).Value = zip;

                //execute statement
                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet searchPatient(string patid,string fname, string lname)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "searchPatient";

                cmdString.Parameters.Add("@patID", SqlDbType.VarChar, 6).Value = patid;
                cmdString.Parameters.Add("@fname", SqlDbType.VarChar, 25).Value = fname;
                cmdString.Parameters.Add("@lname", SqlDbType.VarChar, 25).Value = lname;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet searchPhysician(string phyID, string fname, string lname)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "searchPhysician";

                cmdString.Parameters.Add("@phyID", SqlDbType.VarChar, 6).Value = phyID;
                cmdString.Parameters.Add("@fname", SqlDbType.VarChar, 25).Value = fname;
                cmdString.Parameters.Add("@lname", SqlDbType.VarChar, 25).Value = lname;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet searchRefill(Int32 refillID,string rx_number)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "searchRefill";

                cmdString.Parameters.Add("@refill_ID", SqlDbType.Int).Value = refillID;
                cmdString.Parameters.Add("@rx_number", SqlDbType.VarChar, 6).Value = rx_number;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public DataSet searchPrescription(string rx_number, string patID, string phyID)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "searchPrescription";

                cmdString.Parameters.Add("@rx_number", SqlDbType.VarChar, 6).Value = rx_number;
                cmdString.Parameters.Add("@phyID", SqlDbType.VarChar, 6).Value = phyID;
                cmdString.Parameters.Add("@patID", SqlDbType.VarChar, 6).Value = patID;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                aAdapter.Fill(aDataSet);
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public void DeleteRefill(Int32 refillID)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "DELETEREFILL";
                // Define input parameter
                cmdString.Parameters.Add("@REFILL_ID", SqlDbType.Int).Value = refillID;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();

                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public void DeletePhysician(string physicianID)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "deletePhysician";
                // Define input parameter
                cmdString.Parameters.Add("@physician_id", SqlDbType.VarChar, 6).Value = physicianID;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();

                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public void DeletePatient(string patientID)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "deletePatient";
                // Define input parameter
                cmdString.Parameters.Add("@patient_id", SqlDbType.VarChar, 6).Value = patientID;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();

                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        
        public void DeletePrescription(string rx_number)
        {
            try
            {
                // open connection
                myConn.Open();
                //clear any parameters
                cmdString.Parameters.Clear();
                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "deletePrescription";
                // Define input parameter
                cmdString.Parameters.Add("@rx_number", SqlDbType.VarChar, 6).Value = rx_number;
                // adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();

                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public void AddRefill(Int32 refillID, string rxNumber, string filled)
        {
            try
            {
                //open connection
                myConn.Open();
                cmdString.Parameters.Clear();

                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "addRefill";

                // Define input parameter
                cmdString.Parameters.Add("@REFILL_ID", SqlDbType.Int).Value = refillID;
                cmdString.Parameters.Add("@RX_NUMBER", SqlDbType.VarChar, 6).Value = rxNumber;
                cmdString.Parameters.Add("@DATEFILL", SqlDbType.Date).Value = filled;

                //execute statement
                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        public void UpdateRefill(Int32 refillID, string rxNumber, string filled)
        {
            try
            {
                //open connection
                myConn.Open();
                cmdString.Parameters.Clear();

                // command
                cmdString.Connection = myConn;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "updateRefill";

                // Define input parameter
                cmdString.Parameters.Add("@REFILL_ID", SqlDbType.Int).Value = refillID;
                cmdString.Parameters.Add("@RX_NUMBER", SqlDbType.VarChar, 6).Value = rxNumber;
                cmdString.Parameters.Add("@DATEFILL", SqlDbType.Date).Value = filled;

                //execute statement
                cmdString.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
    }
}