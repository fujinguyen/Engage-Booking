﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Engage.Dnn.Booking
{
    public partial class ExportData : ModuleBase
    {
        static string FileName
        {
            get
            {
                return "AppointmentsData-" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + ".csv";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.BeginDatePicker.SelectedDate = DateTime.Now;
            this.EndDatePicker.SelectedDate = DateTime.Now.AddDays(15);
        }

        /// <summary>
        /// Handles the <see cref="LinkButton.Click"/> event of the <c>ExportButton</c> control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        protected void ExportButton_Click(object sender, EventArgs e)
        {
            //var AppointmentSqlDataProvider = new AppointmentSqlDataProvider();
            //var dt = new DataTable();
            //dt.Load(AppointmentSqlDataProvider.GetAppointments(this.ModuleId, 'AppointmentId', null, null));
            
            ////string outputString = CsvWriter.WriteToString(dt, false, false);
            //var outputFile = new FileStream(this. + "AppointmentsData-" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + ".csv", FileAccess.Write);
            //CsvWriter.WriteToStream(outputFile, dt, false, false);

            //Server.Transfer(FileName).
        }
    }
}