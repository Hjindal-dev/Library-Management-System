using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryManagementSystem
{
    public class UserInfo
    {
       
            public static int id;
            public static string status;
            public static string firstName;
            public static string lastName;

            public UserInfo(int i, string s, string f, string l)
            {
                id = i;
                status = s;
                firstName = f;
                lastName = l;
            }
            public string FirstName
            {
                get { return firstName; }
                set { firstName = value; }
            }
            public string LastName
            {
                get { return lastName; }
                set { lastName = value; }
            }

            public string Status
            {
                get { return status; }
                set { status = value; }
            }
            public int Id
            {
                get { return id; }
                set { id = value; }
            }
        }

    }
