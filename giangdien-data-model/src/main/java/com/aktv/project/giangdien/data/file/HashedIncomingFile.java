package com.aktv.project.giangdien.data.file;

import com.google.common.hash.Hashing;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

/**
 * com.aktv.project.giangdien.data.file.HashedIncomingFile
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@AllArgsConstructor
@ToString
public final class HashedIncomingFile implements IncomingFile {

    private static final Logger LOGGER = LoggerFactory.getLogger(HashedIncomingFile.class);

    private static final String HASH = "SHA-256";

    @Getter
    private String name;
    @Getter
    private String mimeType;
    @Getter
    private InputStream content;
    @Getter
    private int length;
    @Getter
    private final String algo = HASH;
    @Getter
    private String hash;

    /**
     * Construit le HashIncomingFile, reprend les information d'un incoming file, copie le stream sur disque
     * dans un fichier temporaire et calcule le hash.
     *
     * @param incomingFile {@link IncomingFile} dont il faut calculer le hash
     */
    private HashedIncomingFile(IncomingFile incomingFile) {
        this(toTempFile(incomingFile.getContent()), incomingFile.getName(), incomingFile.getMimeType());
    }

    private HashedIncomingFile(Path tempFile, String name, String mimeType) {
        try {
            this.name = name;
            this.mimeType = mimeType;
            this.hash = hashTempFile(tempFile);
            this.length = sizeAsInt(tempFile);
            this.content = new BufferedInputStream(Files.newInputStream(tempFile));
        } catch (IOException e) {
            throw new IllegalStateException("Encountered error while hashing temporary file:", e);
        }finally {
            try {
                Files.delete(tempFile);
            } catch (IOException e) {
                LOGGER.warn("Cannot delete temp file", e);
            }
        }
    }


    private String hashTempFile(Path tempfile) throws IOException {
        return com.google.common.io.Files.hash(tempfile.toFile(), Hashing.sha256()).toString();
    }


    private static Path toTempFile(InputStream content) {
        try (InputStream is = content) {
            Path tempFile = Files.createTempFile("api_hash_", "");
            File file = tempFile.toFile();
            file.deleteOnExit();
            Files.copy(is, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return tempFile;
        } catch (IOException e) {
            LOGGER.error("Encountered error while creating a temporary file to be hashed", e);
            throw new IllegalStateException("Copying a temporary file in order to hash it caused an exception", e);
        }
    }


    /**
     * Caste la taille retournée de type long en int.
     * OK pour digiposte car {@link Integer#MAX_VALUE} (2 147 483 647) ~ 2G or on limite la taille des fichiers uploadés à 20 MB.
     *
     * @param file File to calculate the size
     * @return
     * @throws IOException
     */
    private int sizeAsInt(Path file) throws IOException {
        return (int) Files.size(file);
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof HashedIncomingFile)) {
            return false;
        }
        HashedIncomingFile that = (HashedIncomingFile) o;
        return !(hash != null ? !hash.equals(that.hash) : that.hash != null);
    }

    @Override
    public int hashCode() {
        return hash != null ? hash.hashCode() : 0;
    }


    /**
     * Construit un IncomingFile BatchMail2DigiposteJobListeneravec les informations de hash en plus.
     *
     * @param incomingFile Fichier en entrée de l'API dont il faut calculer le hash.
     * @return HashIncomingFile
     */
    public static HashedIncomingFile of(IncomingFile incomingFile) {
        LOGGER.debug("IncomingFile will be hashed: {}",incomingFile);
        return new HashedIncomingFile(incomingFile);
    }

    /**
     * Construit un IncomingFile BatchMail2DigiposteJobListeneravec les informations de hash en plus.
     *
     * @param tempFile Fichier en entrée de l'API dont il faut calculer le hash.
     * @return HashIncomingFile
     */
    public static HashedIncomingFile of(Path tempFile, String name, String mimeType) {
        LOGGER.debug("IncomingFile will be hashed: {}", tempFile);
        return new HashedIncomingFile(tempFile, name, mimeType);
    }
}
