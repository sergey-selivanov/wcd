module webcachedigger {
    requires java.desktop;
    requires java.sql;

    requires mp3agic;
    requires slf4j.api;
    requires mime.util;
    requires org.apache.logging.log4j;

    requires com.h2database;


    exports org.sergeys.webcachedigger.logic;
    //exports org.sergeys.webcachedigger.ui;

    uses org.sergeys.webcachedigger.logic.IBrowser;

    provides org.sergeys.webcachedigger.logic.IBrowser with
        org.sergeys.webcachedigger.logic.Firefox,
        org.sergeys.webcachedigger.logic.Opera,
        org.sergeys.webcachedigger.logic.Chrome,
        org.sergeys.webcachedigger.logic.InternetExplorer;
}
