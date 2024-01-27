#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

// Bola
int hminBola = 0, sminBola = 150, vminBola = 100;
int hmaxBola = 15, smaxBola = 255, vmaxBola = 255;
// Kresek
int hminKresek = 85, sminKresek = 0, vminKresek = 100;
int hmaxKresek = 255, smaxKresek = 255, vmaxKresek = 255;

int main()
{
    string path = "/home/hamasfa/Desktop/Magang2OpenCV/Bahan/mov.mp4";
    VideoCapture cap(path);
    Mat frame, maskBola, maskKresek, frameHSV, frameBlur;

    // namedWindow("TrackbarsKresek", (640, 200));
    // createTrackbar("Hue Min", "TrackbarsKresek", &hminKresek, 255);
    // createTrackbar("Hue Max", "TrackbarsKresek", &hmaxKresek, 255);
    // createTrackbar("Sat Min", "TrackbarsKresek", &sminKresek, 255);
    // createTrackbar("Sat Max", "TrackbarsKresek", &smaxKresek, 255);
    // createTrackbar("Val Min", "TrackbarsKresek", &vminKresek, 255);
    // createTrackbar("Val Max", "TrackbarsKresek", &vmaxKresek, 255);

    // namedWindow("TrackbarsBola", (640, 200));
    // createTrackbar("Hue Min", "TrackbarsBola", &hminBola, 255);
    // createTrackbar("Hue Max", "TrackbarsBola", &hmaxBola, 255);
    // createTrackbar("Sat Min", "TrackbarsBola", &sminBola, 255);
    // createTrackbar("Sat Max", "TrackbarsBola", &smaxBola, 255);
    // createTrackbar("Val Min", "TrackbarsBola", &vminBola, 255);
    // createTrackbar("Val Max", "TrackbarsBola", &vmaxBola, 255);

    while (true)
    {
        cap >> frame;
        if (frame.empty())
        {
            cap.set(CAP_PROP_POS_FRAMES, 0);
            cap >> frame;
        }
        blur(frame, frameBlur, Size(10, 10));
        cvtColor(frameBlur, frameHSV, COLOR_BGR2HSV);

        inRange(frameHSV, Scalar(hminBola, sminBola, vminBola), Scalar(hmaxBola, smaxBola, vmaxBola), maskBola);
        inRange(frameHSV, Scalar(hminKresek, sminKresek, vminKresek), Scalar(hmaxKresek, smaxKresek, vmaxKresek), maskKresek);

        vector<vector<Point>> contoursBola, contoursKresek;
        vector<Vec4i> hierarchyBola, hierarchyKresek;

        findContours(maskBola, contoursBola, hierarchyBola, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);
        findContours(maskKresek, contoursKresek, hierarchyKresek, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

        drawContours(frame, contoursKresek, -1, Scalar(0, 0, 255), 2);

        for (int i = 0; i < contoursBola.size(); i++)
        {
            Point2f center;
            float radius;
            minEnclosingCircle(contoursBola[i], center, radius);
            cout << "(X,Y)" << center << endl;
            circle(frame, center, radius, Scalar(0, 255, 0), 2);
            for (int j = 0; j < contoursKresek.size(); j++)
            {
                Rect areaKresek = boundingRect(contoursKresek[j]);
                areaKresek.contains(center) ? putText(frame, "Bola di dalam kresek", Point(10, 50), FONT_HERSHEY_SIMPLEX, 1, Scalar(0, 255, 0), 2) 
                                            : putText(frame, "Bola di luar kresek", Point(10, 50), FONT_HERSHEY_SIMPLEX, 1, Scalar(0, 0, 255), 2);
            }
        }
        imshow("Frame", frame);
        // imshow("FrameHSV", frameHSV);
        imshow("MaskBola", maskBola);
        imshow("MaskKresek", maskKresek);
        waitKey(18);
    }
}