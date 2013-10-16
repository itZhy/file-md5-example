package com.github.itzhy.md5;

import org.apache.commons.codec.digest.DigestUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileMD5 {
    public String calculate(String filePath) {
        try (FileInputStream inputStream = new FileInputStream(new File(filePath))) {
            return DigestUtils.md5Hex(inputStream);
        } catch (FileNotFoundException e) {
            throw new RuntimeException("file not found:[" + filePath + "].", e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
