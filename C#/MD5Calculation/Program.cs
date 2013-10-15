using System;

namespace MD5Calculation
{
    class Program
    {
        static void Main(string[] args)
        {
            String filePath = getFilePath();
            Console.WriteLine("该文件的MD5值为：");
            try
            {
                Console.WriteLine(new FileMD5().Calculate(filePath));
            }
            catch (Exception ex)
            {
                Console.WriteLine("读取文件：[" + filePath + "]失败，原因：" + ex.Message);
            }
        }

        private static String getFilePath()
        {
            Console.WriteLine("请输入需要计算MD5值的文件路径。");
            return Console.ReadLine();
        }
    }
}
