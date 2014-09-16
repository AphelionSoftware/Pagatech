using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.Recon.RulesEngine
{
    public static class Hashing
    {


        public static long HashFNV1a_64_ABS(List<string> lstValue)
        {
            string value = "";
            foreach (string str in lstValue)
            {
                value += str;
            }
            return HashFNV1a_64_ABS(value);
        }

        public static long HashFNV1a_64_ABS(string value)
        {
            ulong offset64 = 0xcbf29ce484222325;
            ulong prime64 = 1099511628211;
            ulong hash = offset64;

            byte[] bytes = Encoding.UTF8.GetBytes(value.ToLower());

            for (int i = 0; i < bytes.Length; i++)
            {
                hash = (hash ^ bytes[i]) * prime64;
            }
            return Math.Abs((long)(hash - long.MaxValue));

        }
        public static long HashFNV1a_64(string value)
        {
            ulong offset64 = 0xcbf29ce484222325;
            ulong prime64 = 1099511628211;
            ulong hash = offset64;

            byte[] bytes = Encoding.UTF8.GetBytes(value.ToLower());

            for (int i = 0; i < bytes.Length; i++)
            {
                hash = (hash ^ bytes[i]) * prime64;
            }
            return (long)(hash - long.MaxValue);

        }
    
        public static long HashFNV1a_64(List<string> lstValue){
            string value = "";
            foreach (string str in lstValue)
            {
                value += str;
            }
            return HashFNV1a_64(value);
        }
    }
}
