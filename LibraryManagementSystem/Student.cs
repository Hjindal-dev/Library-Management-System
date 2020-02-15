using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryManagementSystem
{
    public class Student: UserInfo
    {
        public int studentId;
        public string studentFirstName;
        public string studentLastName;
        public string studentNumber;


    
        public Student(int n, string f, string l, string s) : base(n, f, l, s )
        {
            studentId = n;
            studentFirstName = f;
            studentLastName = l;
            studentNumber = s;
        }
        public string StudentFirstName
        {
            get { return studentFirstName; }
            set { studentFirstName = value; }
        }
        public string StudentLastName
        {
            get { return studentLastName; }
            set { studentLastName = value; }
        }

        public string StudentNumber
        {
            get { return studentNumber; }
            set { studentNumber = value; }
        }
        public int StudentId
        {
            get { return studentId; }
            set { studentId = value; }
        }
    }
}