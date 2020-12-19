using System;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace TestConnection
{
    class Program
    {
        const int PORT_NO = 4123;
        const string SERVER_IP = "mcvp-vm";

        static void Main(string[] args)
        {
            //---listen at the specified IP and port no.---
            C.Connect(SERVER_IP, "WHO", PORT_NO);
        }
    }
}
