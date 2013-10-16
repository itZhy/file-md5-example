using System;

namespace MD5Calculation
{
    class Program
    {
        static void Main(string[] args)
        {
            String filePath = getFilePath();
            Console.WriteLine("this file's md5 is:");
            try
            {
                Console.WriteLine(new FileMD5().Calculate(filePath));
            }
            catch (Exception ex)
            {
                Console.WriteLine("faild to read file:[" + filePath + "], due to: " + ex.Message);
            }
        }

        private static String getFilePath()
        {
            Console.WriteLine("please input the file path:");
            return Console.ReadLine();
        }
    }
}
