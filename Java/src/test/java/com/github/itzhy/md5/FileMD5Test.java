package com.github.itzhy.md5;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class FileMD5Test {
    private static final String FILE_PATH = "test.txt";

    @Before
    public void setUp() throws Exception {
        InputStream inputStream = getClass().getResourceAsStream("/fixture/test.txt");
        byte[] content = new byte[inputStream.available()];
        inputStream.read(content);
        FileOutputStream outputStream = new FileOutputStream(FILE_PATH);
        outputStream.write(content);
        outputStream.close();
    }

    @After
    public void tearDown() throws Exception {
        new File(FILE_PATH).delete();
    }

    @Test
    public void should_get_correct_md5() {
        assertThat(new FileMD5().calculate(FILE_PATH), is("85c45b74e8753920570f6c9a01ca759b"));
    }
}
