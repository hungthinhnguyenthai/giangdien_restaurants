package com.aktv.project.giangdien.data.file;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import lombok.Getter;
import lombok.ToString;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * com.aktv.project.giangdien.data.file.IncomingFile
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public interface IncomingFile {

    /**
     * Le nom du fichier (peut etre null)
     * @return
     */
    String getName();

    /**
     * Le type mime du fichier (peut etre null)
     * @return
     */
    String getMimeType();

    /**
     * Le flux binaire du fichier
     * @return
     */
    InputStream getContent();

    /**
     * La taille en octet/bytes du fichier.
     *
     * ATTENTION:
     * Pour accéder à cette methode, il faut d'abord avoir consommé entièrement l'InputStream du fichier,
     * sans quoi une exception risque d'etre levée.
     * Certaines implémentations qui chargent tout le flux en mémoire ou écrivent le fichier sur le disque
     * sont succeptibles de retourner une valeur même si le flux n'est pas entièrement consommé, mais ça n'est pas une généralité
     *
     *
     * @return la taille du fichier (en int car on ne prevoit pas d'IncomingFile de plus de 2gb avec Digiposte)
     */
    int getLength();


    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    /**
     * L'implémentation la plus simple d'un IncomingFile
     */
    @ToString
    public static class BaseIncomingFile implements IncomingFile {
        @Getter
        private final String mimeType;
        @Getter
        private final String name;
        @Getter
        private final CountingInputStream content;

        public BaseIncomingFile(InputStream inputStream, String mimeType, String fileName) {
            Preconditions.checkArgument(inputStream != null,"The file inputstream is mandatory");
            this.content = new CountingInputStream(inputStream);
            this.mimeType = mimeType;
            this.name = fileName;
        }

        @Override
        public int getLength() {
            // TODO il faudrait voir si on n'a pas un moyen plus fiable de s'assurer que le flux a bien été consommé
            int bytesRead = Ints.checkedCast(content.getCount());
            Preconditions.checkState(bytesRead > 0,"It is not possible to get the length of this IncomingFile, "
                    + "because it seems the content has not been read Or maybe the file has no content??? File = " + name);
            return bytesRead;
        }
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * Une implémentation simple mais qui nécessite d'avoir tous les bytes du fichier en mémoire.
     * Cette implémentation est capable de retourner la taille du fichier, même si le flux n'est pas entièrement consommé.
     *
     * On peut supposer que ca sera utile seulement pour des tests car pas performant, mais au cas ou, on peut la laisser ici...
     */
    @ToString
    public static class InMemoryIncomingFile implements IncomingFile {
        @Getter
        private final String name;
        @Getter
        private final String mimeType;
        @Getter
        private final InputStream content;
        @Getter
        private final byte[] contentByteArray;
        @Getter
        private final int length;

        public InMemoryIncomingFile(String fileName, String mimeType, byte[] contentByteArray) {
            Preconditions.checkArgument(contentByteArray != null,"The contentByteArray is mandatory");
            this.content = new ByteArrayInputStream(contentByteArray);
            this.mimeType = mimeType;
            this.name = fileName;
            this.contentByteArray = contentByteArray;
            this.length = contentByteArray.length;
        }

        public InMemoryIncomingFile(String fileName, String mimeType, String stringUtf8Content) {
            this(fileName,mimeType, Preconditions.checkNotNull(stringUtf8Content,"null stringUtf8Content").getBytes(StandardCharsets.UTF_8) );
        }
    }


}
