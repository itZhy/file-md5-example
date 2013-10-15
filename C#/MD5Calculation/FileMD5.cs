using System.Security.Cryptography;
using System.IO;
using System;

namespace MD5Calculation
{
    class FileMD5
    {
        public string Calculate(string filePath)
        {
            using (FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
            {
                return BitConverter.ToString(new MD5CryptoServiceProvider().ComputeHash(stream)).Replace("-", "");
            }
        }
    }
}
