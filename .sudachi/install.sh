SUDACHIDIC_LOCATION=${HOME}/.sudachi/system_core.dic
TARGET_VAERSION="0.1.1"
TARGET_SUDACHIDIC="sudachi-0.1.1-20181002.083840-42-dictionary-core.zip"
TARGET_SUDACHISRC="sudachi-0.1.1-20181002.083840-42-executable.zip"


# Lexicon
wget https://oss.sonatype.org/content/repositories/snapshots/com/worksap/nlp/sudachi/${TARGET_VAERSION}-SNAPSHOT/${TARGET_SUDACHIDIC}
unzip ${TARGET_SUDACHIDIC}
mv system_core.dic ${SUDACHIDIC_LOCATION}
rm ${TARGET_SUDACHIDIC}

# Sudachi
wget https://oss.sonatype.org/content/repositories/snapshots/com/worksap/nlp/sudachi/${TARGET_VAERSION}-SNAPSHOT/${TARGET_SUDACHISRC}
unzip ${TARGET_SUDACHISRC}
rm ${TARGET_SUDACHISRC}
ln -s ${SUDACHIDIC_LOCATION} sudachi-0.1.1-SNAPSHOT/system_core.dic

# SudachiPy
git clone https://github.com/WorksApplications/SudachiPy
cd SudachiPy
pip install -e .
ln -s ${SUDACHIDIC_LOCATION} ./resources/system.dic
