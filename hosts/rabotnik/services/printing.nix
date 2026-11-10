{ pkgs, ... }:
#DONE
{
  services.printing = {
    enable = true;
    package = pkgs.cups;
    drivers = with pkgs; [
      hplip
      gutenprint
      epson-escpr
      magicard-cups-driver
      cups-brother-hl1110
      cups-brother-hl2260d
      cups-brother-hl1210w
      cups-brother-hl3140cw
      cups-brother-hll2340dw
      cups-brother-hll2350dw
      cups-brother-hl3170cdw
      cups-brother-hll2375dw
      cups-brother-mfcl2750dw
      cups-brother-hll3230cdw
      cups-brother-dcpt725dw
      cups-brother-mfcl2800dw
      cups-brother-dcpl3550cdw
      cups-brother-dcpt310
      cups-brother-dcp1610wlpr
      cups-brother-dcpt720dw
      cups-brother-dcpl2550dw
      cups-brother-mfcl2710dw
      canon-capt
      canon-cups-ufr2
      epsonscan2
      epson-alc1100
      epson_201207w
      epson_201310w
      #epson-201106w
      epson-201401w
      epson-tm-t88vi
      epson-workforce-635-nx625-series
      epson-inkjet-printer-workforce-840-series
    ];

    tempDir = "/tmp";
    cups-pdf.enable = true;
    browsing = true;
    logLevel = "info";
    snmpConf = ''
      Address @LOCAL
    '';
    allowFrom = [
      "localhost"
    ];
    extraConf = ''
    '';

    stateless = false;
    browsed = {
      enable = false; #Enable if avahi added
      package = pkgs.cups-browsed;
    };

    clientConf = ''
      AllowAnyRoot Yes
      AllowExpiredCerts No
      DigestOptions None
      Encryption IfRequested
      BrowseDomains all
      TrustOnFirstUse Yes
      User Coddo
      UserAgentTokens Minimal
      ValidateCerts No
    '';

    browsedConf = ''
      CacheDir /var/cache/cups
      LogDir /var/log/cups
      DebugLogging file stdeer
      DomainSocket /var/run/cups/cups.sock
      HttpLocalTimeout 5
      HttpRemoteTimeout 10
      HttpMaxRetries 5
      BrowseInterval 60
      BrowseTimeout 300
      AllowResharingRemoteCUPSPrinters No
      NewBrowsePollQueuesShared No
      NewIPPPrinterQueuesShared No
      OnlyUnsupportedByCUPS No
      UserCUPSGeneratedPPDs No
      LocalQueueNamingRemoteCUPS DNS-SD
      LocalQueueNamingIPPPrinter DNS-SD
      DNSSDBasedDeviceURIs Yes
      IPBasedDeviceURIs No
      CreateRemoteRawPrinterQueues No
      CreateIPPPrinterQueues LocalOnly
      KeepGeneratedQueueOnShutdown Yes
      AutoClustering Yes
      LoadBalancing QueueOnClient
      AutoShutdown Off
      AutoShutdownOn NoQueues
      AutoShutdownTimeout 30
      DebugLogFileSize 1000
      NotifLeaseDuration 86400
      FrequentNetifUpdate Yes
    '';

    openFirewall = false;
    webInterface = true;
    defaultShared = true;
    extraFilesConf = '''';

    listenAddresses = [
      "localhost:631"
    ];

    startWhenNeeded = true;

    /*Other options for extra conf:
    BrowseDNSSDSubTypes_subtype
    BrowseLocalProtocols all|dnssd|none
    BrowseWebIF Yes|No
    DNSSDHostName hostname.example.com
    GSSServiceName name
    <Limit operation ...> ... </Limit>
    <LimitExcept method ...> ... </LimitExcept>
    Listen ipv4/v6-address:port/*port/path
    <Location /path> ... </Location>
    <Policy name > ...</Policy>
    Port number
    ServerAdmin email-address
    ServerAlias hostname
    ServerTokens None|ProductOnly|Major|Minor|Minimal|OS|Full
    SSLListen ipv4/v6-address:port
    SSLListen *:port
    SSLOptions AllowDH|AllowRC4|AllowSSL3|DenyCBC|DenyTLS1.0|MaxTLS1.0|MaxTLS1.1|MaxTLS1.2|MaxTLS1.3|MinTLS1.0|MinTLS1.1|MinTLS1.2|MinTLS1.3
    SSLPort port

    Other options for client conf
    FilterLocation LOCATION//REGULAR-EXPRESSION/
    FilterType any TYPE[,...,TYPE]
    ServerName HOSTNAME-OR-IP-ADDRESS[:PORT]/version=1.1
    SSLOptions AllowDH/AllowRC4/AllowSSL3/DenyCBC/DenyTLS1.0/MaxTLS1.0/MaxTLS1.1/MaxTLS1.2/MaxTLS1.3/MinTLS1.0/MinTLS1.1/MinTLS1.2/MinTLS1.3/None
    
    Other options for browsedConf
    BrowseAllow ip/port
    BrowseDeny ip/port
    BrowseOrder
    BrowseFilter name/host/port/service/domain/color/duplex/pdl
    BrowsePoll ip/port
    BrowseRemoteProtocols/BrowseLocalProtocols/BrowseProtocols none/dnssd
    Cluster QUEUENAME: PRINTER1 PRINTER2
    DefaultOptions Option=Value1 Option2=Value2
    Group group-name-or-number
    Passenv variable[ ... variable ]
    SetEnv variable value
    */
  };
}