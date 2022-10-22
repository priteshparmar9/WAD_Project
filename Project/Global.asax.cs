using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Project
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UsersOnline"] = 0;
            //Application["ListOfOnlineUser"] = "";
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
        /*    Application["ListOfOnlineUser"] =getOnlineUsers();*/
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["UserOnline"] = (int)Application["UserOnline"] - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        private List<String> getOnlineUsers()
        {
            List<String> activeSessions = new List<String>();
            object v = typeof(HttpRuntime).GetProperty("CacheInternal", BindingFlags.NonPublic | BindingFlags.Static).GetValue(null, null);
            object obj = v;
            object[] obj2 = (object[])obj.GetType().GetField("_caches", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(obj);
            for (int i = 0; i < obj2.Length; i++)
            {
                Hashtable c2 = (Hashtable)obj2[i].GetType().GetField("_entries", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(obj2[i]);
                foreach (DictionaryEntry entry in c2)
                {
                    object o1 = entry.Value.GetType().GetProperty("Value", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(entry.Value, null);
                    if (o1.GetType().ToString() == "System.Web.SessionState.InProcSessionState")
                    {
                        SessionStateItemCollection sess = (SessionStateItemCollection)o1.GetType().GetField("_sessionItems", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(o1);
                        if (sess != null)
                        {
                            if (sess["loggedInUserId"] != null)
                            {
                                activeSessions.Add(sess["loggedInUserId"].ToString());
                            }
                        }
                    }
                }
            }
            return activeSessions;
        }
    }
}