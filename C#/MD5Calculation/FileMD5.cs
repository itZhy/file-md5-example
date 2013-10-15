using System.Security.Cryptography;
using System.IO;

namespace MD5Calculation
{
    class FileMD5
    {
        public string Calculate(string filePath)
        {
            using (FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
            {
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] md5data = md5.ComputeHash(stream);
                return System.BitConverter.ToString(md5data).Replace("-", "");
            }
        }
    }
}
