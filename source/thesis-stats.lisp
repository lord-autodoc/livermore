;;;; Copyright (c) 2005 -- 2014, Christopher Mark Gore,
;;;; Soli Deo Gloria,
;;;; All rights reserved.
;;;;
;;;; 2317 South River Road, Saint Charles, Missouri 63303 USA.
;;;; Web: http://cgore.com
;;;; Email: cgore@cgore.com
;;;;
;;;; Redistribution and use in source and binary forms, with or without
;;;; modification, are permitted provided that the following conditions are met:
;;;;
;;;;     * Redistributions of source code must retain the above copyright
;;;;       notice, this list of conditions and the following disclaimer.
;;;;
;;;;     * Redistributions in binary form must reproduce the above copyright
;;;;       notice, this list of conditions and the following disclaimer in the
;;;;       documentation and/or other materials provided with the distribution.
;;;;
;;;;     * Neither the name of Christopher Mark Gore nor the names of other
;;;;       contributors may be used to endorse or promote products derived from
;;;;       this software without specific prior written permission.
;;;;
;;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
;;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;;; POSSIBILITY OF SUCH DAMAGE.

(load "statistics")
(use-package :utilities)
(use-package :statistics)

#|
(defmacro list-entry-names (&rest names)
  (let ((i (gensym)))
    `(dotimes (,i (length ,names))
       (defun (nth ,i ,names) (list)
         (nth ,i list)))))
(list-entry-names num-correct percent-correct money-returned money-ratio)
|#

(setf *reward-a1-stats*
      '((697 46.467 1345840.30 0.49023)
        (736 49.067 1803198.10 0.65683)
        (755 50.733 2024644.50 0.73749)
        (729 48.600 1537726.60 0.56013)
        (760 50.667 2527462.80 0.92065)
        (757 50.467 1864516.90 0.67916)
        (731 48.733 1534178.40 0.55884)
        (748 49.867 2074642.60 0.75570)
        (738 49.200 1686489.30 0.61432)
        (750 50.000 1474754.60 0.53719)
        (756 50.400 1704727.80 0.62096)
        (797 53.133 2267415.30 0.82592)
        (737 49.133 1722569.80 0.62746)
        (773 51.533 1813697.90 0.66065)
        (736 49.067 1592674.50 0.58014)
        (748 49.867 1886072.10 0.68702)
        (777 51.800 2017503.90 0.73489)
        (790 52.667 2239343.30 0.81570)
        (795 53.000 1849534.90 0.67371)
        (764 50.933 1640670.60 0.59763)
        (771 51.400 2309854.30 0.84138)
        (769 51.267 1657139.50 0.60363)
        (740 49.333 1785810.90 0.65050)
        (733 48.867 1487235.00 0.54174)
        (711 47.400 1117451.00 0.40704)
        (766 51.067 1997199.50 0.72750)
        (737 49.133 1731388.60 0.63067)
        (733 48.867 1479574.10 0.53895)
        (782 52.133 2460929.80 0.89641)
        (750 50.000 1952389.00 0.71117)
        (748 49.867 1650241.80 0.60111)
        (768 51.200 2344172.80 0.85388)
        (750 50.000 1567080.00 0.57082)
        (792 52.800 2371039.30 0.86367)
        (755 50.333 1854905.40 0.67566)
        (753 50.200 2336806.00 0.85120)))

(setf *reward-a2-stats*
      '((732 48.800 1643688.60 0.59873)
        (760 50.667 2008069.80 0.73145)
        (719 47.933 1462717.60 0.53281)
        (764 50.933 2135319.80 0.77781)
        (709 47.267 1580409.00 0.57568)
        (749 49.933 2182924.80 0.79515)
        (745 49.667 1622797.40 0.59112)
        (728 48.533 1747139.50 0.63641)
        (751 50.067 1962608.80 0.71490)
        (735 49.000 2259059.80 0.82288)
        (744 49.600 1785154.00 0.65026)
        (766 51.067 2184610.80 0.79576)
        (700 46.667 1503266.60 0.54758)
        (759 50.600 1892128.40 0.68922)
        (734 48.933 1441307.90 0.52501)
        (740 49.333 1759161.50 0.64079)
        (770 51.333 2108838.00 0.76816)
        (719 47.933 1842702.60 0.67122)
        (741 49.400 1827587.90 0.66571)
        (790 52.667 1520111.80 0.55371)
        (726 48.400 1699626.50 0.61910)
        (733 48.867 1952567.00 0.71124)
        (762 50.800 2070002.80 0.75401)
        (750 50.000 1567010.50 0.57080)
        (777 51.800 1852203.30 0.67468)
        (746 49.733 2110600.50 0.76880)
        (761 50.733 1922290.90 0.70021)
        (762 50.800 1968828.60 0.71716)
        (783 52.200 1818857.00 0.66253)
        (715 47.667 1454442.80 0.52979)
        (693 46.200 1358889.10 0.49499)
        (742 49.467 1913998.40 0.69719)
        (781 52.067 2424770.00 0.88324)
        (756 50.400 1633908.30 0.59516)
        (725 48.333 1544612.90 0.56264)
        (789 52.600 2571187.50 0.93657)
        (741 49.400 2392280.00 0.87141)
        (749 49.933 2020340.60 0.73592)
        (790 52.667 1696247.00 0.61787)
        (761 50.733 1904747.40 0.69382)
        (755 50.333 2005358.80 0.73047)
        (728 48.533 1920188.50 0.69944)
        (778 51.867 1363960.00 0.49683)
        (754 50.267 2351558.30 0.85657)))

(setf *reward-b-stats*
      '((754 50.267 1911123.50 0.69614)
        (756 50.400 2194331.30 0.79930)
        (753 50.200 1737398.40 0.63286)
        (743 49.533 1648903.50 0.60063)
        (777 51.800 1793330.40 0.65323)
        (699 46.600 1686804.00 0.61443)
        (767 51.133 1919751.90 0.69928)
        (760 50.667 1858199.50 0.67686)
        (767 51.133 1857471.50 0.67660)
        (750 50.000 1439953.80 0.52451)
        (738 49.200 1905511.50 0.69410)
        (759 50.600 2337308.50 0.85138)
        (705 47.000 1237828.10 0.45089)
        (769 51.267 1476929.60 0.53798)
        (796 53.067 1754939.10 0.63925)
        (745 49.667 2104892.30 0.76672)
        (778 51.867 2224290.50 0.81021)
        (777 51.800 1970422.50 0.71774)
        (808 53.867 2820059.80 1.02723)
        (749 49.933 1524085.40 0.55516)
        (800 53.333 2674222.00 0.97411)
        (713 47.533 1293524.80 0.47118)
        (789 52.600 1864148.90 0.67903)
        (745 49.667 1479819.40 0.53904)
        (709 47.267 1261817.00 0.45963)
        (732 48.800 1219942.60 0.44437)
        (763 50.867 1999874.90 0.72847)
        (763 50.867 2251946.30 0.82029)
        (711 47.400 1243430.40 0.45293)
        (736 49.067 1542073.50 0.56171)
        (729 48.600 1792958.10 0.65310)
        (716 47.733 1499618.60 0.54625)
        (750 50.000 2201066.00 0.80176)
        (710 47.333 1246563.90 0.45407)
        (769 51.267 2059175.10 0.75007)
        (739 49.267 2169500.80 0.79026)
        (745 49.667 1742834.10 0.63484)
        (739 49.267 1548343.10 0.56400)
        (725 48.333 1358260.00 0.49476)
        (804 53.600 2634839.80 0.95976)
        (727 48.467 1824712.00 0.66467)
        (692 46.133 1428679.30 0.52041)
        (750 50.000 2036432.00 0.74179)
        (773 51.533 1758869.10 0.64068)
        (741 49.400 2002855.60 0.72956)
        (760 50.667 1603045.80 0.58392)
        (739 49.267 1488711.10 0.54227)
        (737 49.133 1540651.60 0.56119)
        (815 54.333 2040811.00 0.74338)
        (712 47.467 1315839.30 0.47930)
        (788 52.533 2238399.00 0.81535)
        (729 48.600 2285100.80 0.83237)
        (772 51.467 1949972.80 0.71029)
        (760 50.667 1657851.40 0.60389)
        (753 50.200 1648775.90 0.60058)
        (727 48.467 1265840.10 0.46109)
        (731 48.733 1572333.40 0.57273)))


(setf *reward-c-stats*
      '((757 50.467 1551753.50 0.56524)
        (728 48.533 1904275.10 0.69365)
        (759 50.600 1786963.30 0.65092)
        (757 50.467 1828109.80 0.66590)
        (755 50.333 1721101.30 0.62692)
        (771 51.400 1683998.50 0.61341)
        (757 50.467 2389469.50 0.87038)
        (750 50.000 2036394.40 0.74177)
        (761 50.733 2296070.00 0.83636)
        (754 50.267 1972471.10 0.71849)
        (724 48.267 1340345.30 0.48823)
        (761 50.733 1711701.90 0.62350)
        (779 51.933 1741180.10 0.63424)
        (711 47.400 1466769.40 0.53428)
        (737 49.133 2297312.30 0.83681)
        (766 51.067 2067983.60 0.75328)
        (740 49.333 1494109.00 0.54424)
        (722 48.133 2153049.80 0.78426)
        (702 46.800 1819850.10 0.66289)
        (747 49.800 1986670.30 0.72366)
        (725 48.333 1474611.60 0.53714)
        (731 48.733 1600158.30 0.58287)
        (750 50.000 2407121.50 0.87681)
        (790 52.667 1925902.00 0.70152)
        (725 48.333 1353958.50 0.49319)
        (728 48.533 1564471.60 0.56987)
        (772 51.467 1668233.80 0.60767)
        (737 49.133 1701112.50 0.61964)
        (752 50.133 1424785.90 0.51899)
        (758 50.533 1509198.50 0.54974)))

(setf *reward-d-opt-stats*
      '((779 51.933 1665688.40 0.60674)
        (713 47.533 1573552.60 0.57318)
        (717 47.800 1163151.90 0.42369)
        (753 50.200 1412854.30 0.51464)
        (759 50.600 1824665.50 0.66465)
        (698 46.533 1525862.00 0.55581)
        (705 47.000 1412876.00 0.51465)
        (726 48.400 1184664.30 0.43152)
        (725 48.333 1791558.40 0.65259)
        (739 49.267 1886537.40 0.68719)
        (708 47.200 1598547.60 0.58228)
        (699 46.600 1367025.90 0.49795)
        (690 46.000 1474700.00 0.53717)
        (727 48.467 1642376.10 0.59825)
        (718 47.867 1948591.40 0.70979)
        (747 49.800 1867460.60 0.68024)
        (732 48.800 1702692.10 0.62022)
        (724 48.267 1487739.90 0.54192)
        (723 48.200 2006423.10 0.73085)
        (718 47.867 1618370.10 0.58950)
        (733 48.867 1569887.60 0.57184)
        (746 49.733 1639002.50 0.59702)
        (710 47.333 1576917.90 0.57440)
        (740 49.333 1373001.60 0.50013)
        (712 47.467 1710736.80 0.62315)
        (725 48.333 1417770.80 0.51643)
        (738 49.200 1580111.10 0.57557)
        (718 47.867 1574832.00 0.57364)
        (719 47.933 1574044.80 0.57336)
        (775 51.667 2046951.50 0.74562)
        (717 47.800 1522178.90 0.55447)
        (760 50.667 2122616.30 0.77318)
        (697 46.467 1474322.60 0.53703)
        (726 48.400 1752589.00 0.63839)
        (733 48.867 1975464.30 0.71958)
        (765 51.000 1695158.80 0.61747)
        (689 45.933 1388683.80 0.50584)
        (735 49.000 1567421.50 0.57095)
        (786 52.400 2119340.30 0.77199)
        (728 48.533 1478268.80 0.53847)
        (732 48.800 1608143.80 0.58578)
        (718 47.867 1434409.90 0.52249)
        (710 47.333 1693709.40 0.61695)
        (713 47.533 1363478.50 0.49666)
        (730 48.667 1674137.10 0.60982)))

(setf *reward-d-pess-stats*
      '((779 51.933 1665688.40 0.60674)
        (713 47.533 1573552.60 0.57318)
        (717 47.800 1163151.90 0.42369)
        (753 50.200 1412854.30 0.51464)
        (759 50.600 1824665.50 0.66465)
        (698 46.533 1525862.00 0.55581)
        (705 47.000 1412876.00 0.51465)
        (726 48.400 1184664.30 0.43152)
        (725 48.333 1791558.40 0.65259)
        (739 49.267 1886537.40 0.68719)
        (708 47.200 1598547.60 0.58228)
        (699 46.600 1367025.90 0.49795)
        (690 46.000 1474700.00 0.53717)
        (727 48.467 1642376.10 0.59825)
        (718 47.867 1948591.40 0.70979)
        (747 49.800 1867460.60 0.68024)
        (732 48.800 1702692.10 0.62022)
        (724 48.267 1487739.90 0.54192)
        (723 48.200 2006423.10 0.73085)
        (718 47.867 1618370.10 0.58950)
        (733 48.867 1569887.60 0.57184)
        (746 49.733 1639002.50 0.59702)
        (710 47.333 1576917.90 0.57440)
        (740 49.333 1373001.60 0.50013)
        (712 47.467 1710736.80 0.62315)
        (725 48.333 1417770.80 0.51643)
        (738 49.200 1580111.10 0.57557)
        (718 47.867 1574832.00 0.57364)
        (719 47.933 1574044.80 0.57336)
        (775 51.667 2046951.50 0.74562)
        (717 47.800 1522178.90 0.55447)
        (760 50.667 2122616.30 0.77318)
        (697 46.467 1474322.60 0.53703)
        (726 48.400 1752589.00 0.63839)
        (733 48.867 1975464.30 0.71958)
        (765 51.000 1695158.80 0.61747)
        (689 45.933 1388683.80 0.50584)
        (735 49.000 1567421.50 0.57095)
        (786 52.400 2119340.30 0.77199)
        (728 48.533 1478268.80 0.53847)
        (732 48.800 1608143.80 0.58578)
        (718 47.867 1434409.90 0.52249)
        (710 47.333 1693709.40 0.61695)
        (713 47.533 1363478.50 0.49666)
        (730 48.667 1674137.10 0.60982)))

(setf *ga-threshold-35-stats*
      '((757 50.467 1346346.10 0.49042)
        (756 50.400 2627517.80 0.95709)
        (774 51.600 2164980.80 0.78861)
        (732 48.800 1528852.90 0.55690)
        (763 50.867 1763139.00 0.64224)
        (795 53.000 1828487.90 0.66604)
        (806 53.733 1808836.10 0.65888)
        (755 50.333 1669458.60 0.60811)
        (758 50.533 2256031.80 0.82178)
        (757 50.467 2027913.60 0.73868)
        (724 48.267 1447059.50 0.52710)
        (740 49.333 1674835.80 0.61007)
        (747 49.800 1615567.80 0.58848)
        (749 49.933 1496356.10 0.54506)
        (747 49.800 2014155.80 0.73367)
        (762 50.800 2130721.00 0.77613)
        (719 47.933 2034397.60 0.74104)
        (746 49.733 1947176.40 0.70927)
        (764 50.933 1669469.10 0.60812)
        (734 48.933 1409791.50 0.51353)
        (737 49.133 2258358.80 0.82262)
        (752 50.133 1789301.30 0.65177)
        (740 49.333 1537134.00 0.55991)
        (802 53.467 2379268.00 0.86667)
        (749 49.933 2236944.00 0.81482)
        (742 49.467 1691958.00 0.61631)
        (787 52.467 1704871.00 0.62101)
        (783 52.200 1919372.40 0.69915)
        (798 53.200 2274777.00 0.82860)
        (782 52.133 1989310.50 0.72462)))

(setf *ga-threshold-45-stats*
      '((770 51.333 1836184.00 0.66884)
        (766 51.067 2020390.30 0.73594)
        (775 51.667 1989083.00 0.72454)
        (791 52.733 2129397.50 0.77565)
        (742 49.467 1950680.90 0.71055)
        (816 54.400 1724036.10 0.62799)
        (724 48.267 1769144.60 0.64442)
        (770 51.333 1761829.60 0.64176)
        (763 50.867 2207485.50 0.80409)
        (724 48.267 1645267.60 0.59930)
        (780 52.000 1970596.60 0.71780)
        (815 54.333 2043920.60 0.74451)
        (760 50.667 2040614.00 0.74331)
        (739 49.267 2002362.90 0.72938)
        (717 47.800 1670414.60 0.60846)
        (747 49.800 1761269.80 0.64156)
        (771 51.400 1662048.80 0.60541)
        (764 50.933 1837207.40 0.66922)
        (769 51.267 1628521.50 0.59320)
        (743 49.533 1643942.00 0.59882)
        (778 51.867 2077586.00 0.75678)
        (773 51.533 2097602.50 0.76407)
        (749 49.933 1851581.90 0.67445)
        (756 50.400 2297796.00 0.83699)
        (770 51.333 2160928.80 0.78713)
        (699 46.600 1250916.30 0.45566)
        (788 52.533 2093449.60 0.76256)
        (746 49.733 1678072.00 0.61125)
        (777 51.800 1851265.40 0.67434)
        (754 50.267 1946476.40 0.70902)
        (734 48.933 1714632.90 0.62457)))

(setf *ga-threshold-50-stats*
      '((744 49.600 2039144.30 0.74277)
        (808 53.867 2198087.00 0.80067)
        (796 53.067 1572119.80 0.57266)
        (778 51.867 1510222.40 0.55011)
        (735 49.000 1564802.10 0.56999)
        (756 50.400 1666240.30 0.60694)
        (764 50.933 1975120.30 0.71945)
        (771 51.400 2281888.50 0.83120)
        (766 51.067 2087435.10 0.76036)
        (798 53.200 2398077.50 0.87352)
        (774 51.600 2000119.50 0.72856)
        (750 50.000 1682507.80 0.61287)
        (748 49.867 1569849.50 0.57183)
        (777 51.800 2130342.00 0.77599)
        (743 49.533 1872955.90 0.68224)
        (761 50.733 1411185.50 0.51404)
        (785 52.333 1618089.00 0.58940)
        (782 52.133 1681347.80 0.61244)
        (735 49.000 1878681.50 0.68432)
        (760 50.667 1679061.40 0.61161)
        (779 51.933 2120819.80 0.77252)
        (742 49.467 1641753.50 0.59802)
        (735 49.000 1866094.60 0.67974)
        (765 51.000 2291745.30 0.83479)
        (713 47.533 1329746.00 0.48437)
        (758 50.533 2080739.00 0.75793)
        (783 52.200 2425741.30 0.88359)
        (762 50.800 1933386.60 0.70425)
        (754 50.267 1853269.30 0.67507)
        (779 51.933 2191828.50 0.79839)))

(setf *crossover-probability-0.3-stats*
      '((748 49.867 2089321.60 0.76105)
        (774 51.600 2038104.10 0.74240)
        (762 50.800 1828767.50 0.66614)
        (763 50.867 1727692.10 0.62933)
        (762 50.800 2056973.10 0.74927)
        (761 50.733 2014506.60 0.73380)
        (740 49.333 1592658.50 0.58014)
        (774 51.600 1889039.30 0.68810)
        (752 50.133 1751259.90 0.63791)
        (760 50.667 1691478.30 0.61613)
        (712 47.467 1787461.30 0.65110)
        (742 49.467 1867526.60 0.68026)
        (768 51.200 1859496.80 0.67734)
        (719 47.933 1313611.90 0.47849)
        (739 49.267 1609800.50 0.58638)
        (762 50.800 2224519.00 0.81030)
        (722 48.133 1754207.60 0.63898)
        (729 48.600 2129011.00 0.77551)
        (734 48.933 1866652.40 0.67994)
        (804 53.600 2046761.50 0.74555)
        (746 49.733 1676311.80 0.61061)
        (746 49.733 1745728.10 0.63589)
        (770 51.333 1969352.30 0.71735)
        (739 49.267 1760778.50 0.64138)
        (770 51.333 2088271.60 0.76067)
        (765 51.000 1676521.00 0.61069)
        (744 49.600 1833486.40 0.66786)
        (770 51.333 2206568.00 0.80376)
        (738 49.200 1810662.80 0.65955)
        (776 51.733 2354066.50 0.85749)
        (829 55.267 1681597.10 0.61253)
        (788 52.533 1874324.60 0.68274)
        (719 47.933 1629987.80 0.59374)))

(setf *crossover-probability-0.5-stats*
      '((792 52.800 2178936.80 0.79369)
        (726 48.400 1577299.40 0.57454)
        (799 53.267 2373018.30 0.86439)
        (762 50.800 1969518.00 0.71741)
        (775 51.667 1710381.60 0.62302)
        (757 50.467 2018908.60 0.73540)
        (779 51.933 2134628.00 0.77755)
        (728 48.533 1593788.60 0.58055)
        (718 47.867 1354985.40 0.49356)
        (753 50.200 1694559.50 0.61726)
        (739 49.267 1723480.50 0.62779)
        (717 47.800 1581119.50 0.57593)
        (774 51.600 1606139.90 0.58505)
        (732 48.800 1948141.50 0.70963)
        (778 51.867 2426894.30 0.88401)
        (794 52.933 1879418.30 0.68459)
        (722 48.133 1838653.10 0.66974)
        (747 49.800 2000650.50 0.72875)
        (750 50.000 2251495.00 0.82012)
        (759 50.600 1802205.10 0.65647)
        (729 48.600 1797014.00 0.65458)
        (748 49.867 1946074.00 0.70887)
        (727 48.467 1645252.10 0.59930)
        (784 52.267 1704755.60 0.62097)
        (791 52.733 2040389.00 0.74323)
        (751 50.067 2345240.80 0.85427)
        (742 49.467 1858150.50 0.67685)
        (738 49.200 1951853.60 0.71098)
        (759 50.600 1754166.90 0.63897)
        (722 48.133 1484280.50 0.54066)
        (786 52.400 2153148.80 0.78430)))

(setf *crossover-probability-0.7-stats*
      '((757 50.467 1926215.30 0.70164)
        (747 49.800 1809032.80 0.65895)
        (809 53.933 1991118.00 0.72528)
        (797 53.133 1859157.00 0.67721)
        (753 50.200 1862342.10 0.67837)
        (792 52.800 2280621.50 0.83073)
        (754 50.267 1826900.40 0.66546)
        (772 51.467 2526742.80 0.92039)
        (734 48.933 1791041.50 0.65240)
        (749 49.933 1949175.50 0.71000)
        (739 49.267 1865315.60 0.67946)
        (754 50.267 2028496.00 0.73890)
        (754 50.267 2190245.30 0.79781)
        (801 53.400 1974142.40 0.71910)
        (760 50.667 1888489.30 0.68790)
        (781 52.067 2099623.80 0.76480)
        (786 52.400 2072956.50 0.75509)
        (723 48.200 1904569.90 0.69375)
        (731 48.733 1831109.00 0.66700)
        (804 53.600 1940426.40 0.70682)
        (751 50.067 1543844.80 0.56236)
        (720 48.000 1304987.30 0.47535)
        (741 49.400 1748381.90 0.63686)
        (738 49.200 1877075.30 0.68374)
        (688 45.867 1671719.80 0.60894)
        (731 48.733 2366318.00 0.86195)
        (738 49.200 1700178.90 0.61930)
        (804 53.600 1885169.30 0.68669)
        (718 47.867 2084824.60 0.75941)
        (734 48.933 1738468.40 0.63325)
        (773 51.533 2081480.90 0.75820)
        (738 49.200 1264236.40 0.46051)
        (714 47.600 1640388.80 0.59752)
        (755 50.333 1537098.50 0.55990)))


(setf *crossover-probability-0.9-stats*
      '((758 50.533 2175259.00 0.79235)
        (721 48.067 1919813.00 0.69931)
        (779 51.933 1910113.90 0.69577)
        (769 51.267 1977666.00 0.72038)
        (746 49.733 2292942.50 0.83522)
        (761 50.733 1862512.50 0.67843)
        (784 52.267 1830926.00 0.66693)
        (768 51.200 2388608.50 0.87007)
        (779 51.933 1972733.10 0.71858)
        (743 49.533 1733037.00 0.63127)
        (768 51.200 1979740.40 0.72114)
        (744 49.600 1419889.40 0.51721)
        (785 52.333 2248169.80 0.81891)
        (755 50.333 2332048.80 0.84947)
        (760 50.667 1670270.40 0.60841)
        (707 47.133 1511321.10 0.55051)
        (780 52.000 1937072.50 0.70559)
        (721 48.067 1468904.40 0.53506)
        (775 51.667 2097622.30 0.76407)
        (801 53.400 1922342.80 0.70023)
        (788 52.533 2275156.00 0.82874)
        (779 51.933 1743879.40 0.63522)
        (781 52.067 2302730.80 0.83879)
        (764 50.933 2399683.00 0.87410)
        (755 50.333 1846685.30 0.67267)
        (751 50.067 1949583.10 0.71015)
        (770 51.333 2055609.40 0.74877)
        (786 52.400 2368810.00 0.86286)
        (772 51.467 2214491.00 0.80665)
        (722 48.133 2056949.60 0.74926)
        (763 50.867 1481194.40 0.53954)
        (791 52.733 2256010.00 0.82177)
        (729 48.600 1516046.40 0.55223)
        (742 49.467 1895599.30 0.69049)
        (743 49.533 1576968.90 0.57442)
        (739 49.267 1729789.30 0.63009)
        (741 49.400 1977271.40 0.72024)
        (747 49.800 1800831.10 0.65597)
        (749 49.933 1702346.60 0.62009)))

(setf *mutation-probability-0.06-stats*
      '((791 52.733 1966239.60 0.71622)
        (744 49.600 1914507.50 0.69737)
        (741 49.400 2089454.90 0.76110)
        (782 52.133 2509588.00 0.91414)
        (792 52.800 2159343.00 0.78656)
        (773 51.533 1972728.40 0.71858)
        (743 49.533 1781606.00 0.64896)
        (739 49.267 1897393.50 0.69114)
        (785 52.333 2264482.50 0.82486)
        (762 50.800 1634276.90 0.59530)
        (791 52.733 2147893.50 0.78239)
        (785 52.333 2145923.80 0.78167)
        (733 48.867 1812520.90 0.66022)
        (761 50.733 1975011.40 0.71941)
        (769 51.267 1579600.50 0.57538)
        (783 52.200 2250694.80 0.81983)
        (778 51.867 1701438.50 0.61976)
        (747 49.800 2013802.10 0.73354)
        (757 50.467 1741012.60 0.63418)
        (735 49.000 1784078.50 0.64986)
        (753 50.200 1970274.80 0.71769)
        (770 51.333 1940209.60 0.70674)
        (772 51.467 2100772.30 0.76522)
        (771 51.400 2224628.80 0.81034)
        (784 52.267 1847123.90 0.67283)
        (770 51.333 2734496.80 0.99606)
        (727 48.467 1619042.60 0.58975)
        (752 50.133 2080770.00 0.75794)
        (775 51.667 1676369.30 0.61063)
        (782 52.133 2231554.50 0.81286)
        (704 46.933 1676962.10 0.61085)
        (741 49.400 1669943.90 0.60829)
        (747 49.800 1926353.30 0.70169)
        (785 52.333 2011135.10 0.73257)))

(setf *mutation-probability-0.08-stats*
      '((717 47.800 1563675.50 0.56958)
        (795 53.000 1993580.10 0.72618)
        (792 52.800 1760769.90 0.64137)
        (737 49.133 1986191.90 0.72349)
        (765 51.000 1721890.10 0.62721)
        (755 50.333 1693872.80 0.61701)
        (789 52.600 2045254.00 0.74500)
        (762 50.800 2076190.60 0.75627)
        (707 47.133 2421790.30 0.88216)
        (788 52.533 2347861.30 0.85523)
        (779 51.933 1949687.30 0.71019)
        (702 46.800 1590391.60 0.57931)
        (721 48.067 1474372.80 0.53705)
        (763 50.867 1752119.50 0.63822)
        (737 49.133 1230840.30 0.44834)
        (769 51.267 2181847.30 0.79475)
        (786 52.400 2091437.60 0.76182)
        (715 47.667 1637751.50 0.59656)
        (733 48.867 1896383.50 0.69077)
        (784 52.267 2023896.40 0.73722)
        (760 50.667 2322500.30 0.84599)
        (775 51.667 1796158.00 0.65426)
        (763 50.867 1795873.40 0.65416)
        (783 52.200 2086496.10 0.76002)
        (759 50.600 1859705.00 0.67741)
        (746 49.733 2001328.80 0.72900)
        (668 44.533 1244045.80 0.45315)
        (740 49.333 1819890.80 0.66291)
        (770 51.333 2131366.50 0.77637)
        (747 49.800 2099952.00 0.76492)
        (767 51.133 1982662.00 0.72220)
        (748 49.867 1579369.30 0.57530)
        (717 47.800 1722654.90 0.62749)
        (767 51.133 2392325.50 0.87142)
        (741 49.400 1671642.50 0.60891)
        (806 53.733 2137129.50 0.77847)
        (727 48.467 1873541.00 0.68245)
        (746 49.733 2045763.30 0.74518)
        (791 52.733 2328874.30 0.84831)))

(setf *mutation-probability-0.10-stats*
      '((767 51.133 2325590.80 0.84711)
        (773 51.533 1751724.00 0.63808)
        (768 51.200 1935980.40 0.70520)
        (789 52.600 2891320.00 1.05319)
        (764 50.933 2069530.10 0.75384)
        (786 52.400 2173871.30 0.79185)
        (743 49.533 1866844.00 0.68001)
        (711 47.400 1938915.00 0.70626)
        (781 52.067 1803943.90 0.65710)
        (774 51.600 1959950.90 0.71393)
        (745 49.667 2140474.00 0.77968)
        (782 52.133 2099427.80 0.76473)
        (774 51.600 1546449.80 0.56331)
        (753 50.200 1991849.80 0.72555)
        (734 48.933 1701670.40 0.61985)
        (742 49.467 1865157.00 0.67940)
        (753 50.200 1810592.90 0.65952)
        (767 51.133 1903275.60 0.69328)
        (787 52.467 2015638.40 0.73421)
        (788 52.533 2000269.90 0.72861)
        (794 52.933 2231273.80 0.81276)
        (743 49.533 1597218.50 0.58180)
        (769 51.267 2009073.00 0.73182)
        (736 49.067 1250508.00 0.45551)
        (713 47.533 1860895.40 0.67785)
        (765 51.000 1770611.30 0.64496)
        (796 53.067 2005232.00 0.73042)
        (757 50.467 2024657.10 0.73750)
        (709 47.267 1465345.80 0.53376)
        (765 51.000 2495362.50 0.90895)
        (785 52.333 1726877.30 0.62903)
        (768 51.200 2067458.80 0.75309)
        (760 50.667 1786269.00 0.65066)
        (734 48.933 2483561.80 0.90466)
        (769 51.267 2028270.80 0.73881)
        (758 50.533 1636919.40 0.59626)))

(setf *mutation-probability-0.15-stats*
      '((796 53.067 2111131.00 0.76900)
        (744 49.600 2103875.30 0.76635)
        (761 50.733 2229919.30 0.81227)
        (753 50.200 1744597.10 0.63548)
        (767 51.133 2629133.80 0.95768)
        (767 51.133 2090670.00 0.76154)
        (747 49.800 2136582.30 0.77827)
        (787 52.467 1946568.00 0.70905)
        (770 51.333 2033121.00 0.74058)
        (773 51.533 2093319.80 0.76251)
        (766 51.067 2101841.30 0.76561)
        (734 48.933 1570315.60 0.57200)
        (745 49.667 1606026.30 0.58501)
        (771 51.400 1803020.40 0.65676)
        (754 50.267 1941790.90 0.70731)
        (760 50.667 2236681.80 0.81473)
        (796 53.067 1796601.80 0.65443)
        (798 53.200 2532531.80 0.92249)
        (755 50.333 2130703.30 0.77612)
        (763 50.867 1974727.60 0.71931)
        (744 49.600 2124478.50 0.77386)
        (767 51.133 1834654.30 0.66829)
        (737 49.133 2202310.50 0.80221)
        (782 52.133 2395346.80 0.87252)
        (776 51.733 2103362.00 0.76617)
        (804 53.600 2091553.10 0.76186)
        (719 47.933 1439997.00 0.52453)
        (798 53.200 2975396.80 1.08381)
        (720 48.000 1828110.30 0.66590)
        (731 48.733 1406036.50 0.51216)
        (771 51.400 1816987.50 0.66185)
        (780 52.000 2152859.80 0.78420)))

(setf *mutation-probability-0.20-stats*
      '((740 49.333 1771788.80 0.64539)
        (745 49.667 1963664.80 0.71528)
        (773 51.533 1842661.10 0.67120)
        (767 51.133 1670902.90 0.60864)
        (743 49.533 1502196.10 0.54719)
        (751 50.067 1951134.50 0.71072)
        (773 51.533 2057406.80 0.74943)
        (730 48.667 1852648.40 0.67484)
        (761 50.733 1843431.60 0.67148)
        (697 46.467 1716358.00 0.62520)
        (708 47.200 1704264.60 0.62079)
        (767 51.133 1774310.40 0.64631)
        (735 49.000 1862312.00 0.67836)
        (752 50.133 1867441.60 0.68023)
        (779 51.933 1712983.00 0.62397)
        (772 51.467 1707995.00 0.62215)
        (801 53.400 2186178.30 0.79633)
        (769 51.267 1794991.80 0.65384)
        (753 50.200 1736782.30 0.63264)
        (787 52.467 2067081.90 0.75295)
        (768 51.200 2224367.30 0.81024)
        (789 52.600 1616820.10 0.58894)
        (774 51.600 1894136.50 0.68995)
        (781 52.067 1850738.50 0.67415)
        (765 51.000 1760957.80 0.64144)
        (759 50.600 1738230.00 0.63316)
        (803 53.533 2708086.00 0.98644)
        (802 53.467 2124169.30 0.77374)
        (793 52.867 1516978.00 0.55257)
        (779 51.933 1952311.40 0.71114)
        (772 51.467 2179982.50 0.79408)
        (768 51.200 1977054.50 0.72016)
        (728 48.533 2022940.90 0.73687)
        (767 51.133 1824942.30 0.66475)
        (748 49.867 2302003.80 0.83852)
        (733 48.867 1734464.80 0.63179)))


(setf *exploration-probability-0.1-stats*
      '((727 48.467 1676758.30 0.61077)
        (781 52.067 2239741.00 0.81584)
        (738 49.200 1761625.60 0.64169)
        (749 49.933 1883884.30 0.68622)
        (733 48.867 1817400.40 0.66200)
        (691 46.067 1793573.30 0.65332)
        (783 52.200 2043470.50 0.74435)
        (774 51.600 2065145.30 0.75224)
        (778 51.867 1937653.90 0.70581)
        (774 51.600 1834133.40 0.66810)
        (696 46.400 1524898.30 0.55546)
        (779 51.933 1785789.80 0.65049)
        (782 52.133 1935346.30 0.70496)
        (714 47.600 1512111.60 0.55080)
        (746 49.733 2176724.80 0.79289)
        (698 46.533 1210933.40 0.44109)
        (779 51.933 1929867.40 0.70297)
        (788 52.533 1756500.10 0.63982)
        (720 48.000 1593246.60 0.58035)
        (738 49.200 1823979.40 0.66440)
        (791 52.733 1526209.60 0.55593)
        (763 50.867 1962275.30 0.71477)
        (758 50.533 1435222.90 0.52279)
        (810 54.000 2446262.50 0.89107)
        (786 52.400 1843706.60 0.67158)
        (756 50.400 1692507.30 0.61651)
        (760 50.667 1737917.60 0.63305)
        (796 53.067 1693561.80 0.61689)
        (775 51.667 1876126.80 0.68339)
        (752 50.133 1684976.90 0.61377)
        (752 50.133 1961738.30 0.71458)
        (787 52.467 2058045.50 0.74966)
        (798 53.200 1836805.40 0.66907)
        (755 50.333 1911147.00 0.69615)
        (767 51.133 1829959.00 0.66658)
        (773 51.533 2290359.30 0.83428)
        (791 52.733 2051518.50 0.74728)
        (788 52.533 1736280.30 0.63245)
        (799 53.267 2184878.00 0.79586)
        (770 51.333 1773751.60 0.64610)
        (765 51.000 1892236.50 0.68926)
        (741 49.400 1937609.30 0.70579)))

(setf *exploration-probability-0.3-stats*
      '((773 51.533 2590413.00 0.94358)
        (765 51.000 1810869.40 0.65962)
        (764 50.933 1905531.90 0.69410)
        (783 52.200 2101507.50 0.76549)
        (763 50.867 2126591.00 0.77463)
        (779 51.933 2848646.30 1.03764)
        (773 51.533 1878266.60 0.68417)
        (725 48.333 1813381.50 0.66054)
        (740 49.333 1968172.40 0.71692)
        (781 52.067 1972084.50 0.71835)
        (773 51.533 2382098.50 0.86770)
        (733 48.867 1980129.60 0.72128)
        (768 51.200 1703082.30 0.62036)
        (749 49.933 1626329.00 0.59240)
        (758 50.533 2129789.30 0.77579)
        (802 53.467 2352457.80 0.85690)
        (774 51.600 1764376.90 0.64269)
        (795 53.000 2112756.80 0.76959)
        (752 50.133 2158866.50 0.78638)
        (793 52.867 2395531.00 0.87259)
        (753 50.200 2424314.50 0.88308)
        (766 51.067 1565974.00 0.57042)
        (756 50.400 2157882.80 0.78603)
        (782 52.133 1923513.10 0.70065)
        (779 51.933 2471432.80 0.90024)
        (737 49.133 2087255.50 0.76030)
        (768 51.200 2023090.30 0.73693)
        (729 48.600 2085343.10 0.75960)
        (731 48.733 2185144.80 0.79596)
        (799 53.267 1892232.30 0.68926)
        (725 48.333 1608106.40 0.58577)
        (817 54.467 2183452.80 0.79534)
        (777 51.800 2077191.80 0.75663)
        (768 51.200 2192298.00 0.79856)
        (727 48.467 1536175.30 0.55956)
        (765 51.000 2394200.00 0.87211)
        (801 53.400 2549503.30 0.92868)
        (772 51.467 2253291.30 0.82078)
        (753 50.200 2458822.80 0.89565)
        (743 49.533 1926261.90 0.70166)))

(setf *exploration-probability-0.4-stats*
      '((748 49.867 1822075.80 0.66371)
        (758 50.533 1832062.90 0.66734)
        (788 52.533 1919554.90 0.69921)
        (774 51.600 2262379.00 0.82409)
        (787 52.467 1864475.90 0.67915)
        (787 52.467 1990207.40 0.72495)
        (757 50.467 2204592.30 0.80304)
        (795 53.000 2383988.00 0.86839)
        (760 50.667 2222326.30 0.80950)
        (806 53.733 2108843.00 0.76816)
        (770 51.333 1844317.40 0.67181)
        (764 50.933 2071311.30 0.75449)
        (784 52.267 1709873.40 0.62283)
        (795 53.000 1816469.80 0.66166)
        (765 51.000 1681502.10 0.61250)
        (772 51.467 1911725.30 0.69636)
        (730 48.667 1818013.10 0.66223)
        (744 49.600 2002104.60 0.72928)
        (790 52.667 1755209.30 0.63935)
        (755 50.333 1786774.60 0.65085)
        (736 49.067 2199385.80 0.80114)
        (778 51.867 2394641.80 0.87227)
        (772 51.467 1981362.10 0.72173)
        (760 50.667 1939950.10 0.70664)
        (749 49.933 1792468.60 0.65292)
        (743 49.533 1934421.30 0.70463)
        (770 51.333 2077961.00 0.75691)
        (748 49.867 1893132.50 0.68959)
        (768 51.200 2112139.00 0.76936)
        (766 51.067 2030522.10 0.73963)
        (764 50.933 1914516.00 0.69738)
        (768 51.200 1831522.90 0.66715)
        (799 53.267 1931879.80 0.70370)
        (776 51.733 2033541.90 0.74073)
        (806 53.733 2251441.50 0.82010)
        (799 53.267 2395224.50 0.87248)
        (743 49.533 1850740.10 0.67415)
        (745 49.667 1640815.50 0.59768)
        (765 51.000 1970156.80 0.71764)
        (788 52.533 2076207.90 0.75627)
        (733 48.867 1718591.90 0.62601)
        (774 51.600 1950482.00 0.71048)
        (752 50.133 1862726.00 0.67851)
        (754 50.267 1729490.30 0.62998)
        (750 50.000 1850783.00 0.67416)
        (748 49.867 1637668.40 0.59653)
        (756 50.400 1669904.40 0.60828)))

(defun report-stats (method-symbol)
  (dolist (stat-fn '(arithmetic-mean sample-standard-deviation maximum minimum))
    (format t "~A: ~A~%" stat-fn 
            (mapcar #'(lambda (x)
                        (funcall stat-fn
                                 (eval method-symbol)
                                 :key (curry #'nth x)))
                    '(0 1 2 3)))))

(defun reward-stats-report ()
  (dolist (reward-method '(*reward-a1-stats*
                            *reward-a2-stats*
                            *reward-b-stats*
                            *reward-c-stats*
                            *reward-d-opt-stats*
                            *reward-d-pess-stats*))
    (format t "~2%Reward method: ~A~%" reward-method)
    (report-stats reward-method)))
