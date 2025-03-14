#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int hmin = 21, smin = 88, vmin = 130;
int hmax = 255, smax = 255, vmax = 255;

int main()
{
    string path = "/home/hamasfa/Desktop/Magang2OpenCV/Bahan/Bola.jpeg";
    Mat imgOutput = imread(path);
    Mat img = imread(path);
    Mat imgHSV, mask, imgBlur;

    cvtColor(imgOutput, imgHSV, COLOR_BGR2HSV);
    blur(imgHSV, imgBlur, Size(3, 3));

    // namedWindow("Trackbars", (640, 200));
    // createTrackbar("Hue Min", "Trackbars", &hmin, 255);
    // createTrackbar("Hue Max", "Trackbars", &hmax, 255);
    // createTrackbar("Sat Min", "Trackbars", &smin, 255);
    // createTrackbar("Sat Max", "Trackbars", &smax, 255);
    // createTrackbar("Val Min", "Trackbars", &vmin, 255);
    // createTrackbar("Val Max", "Trackbars", &vmax, 255);

    // while (true)
    // {
    Scalar lower(hmin, smin, vmin);
    Scalar upper(hmax, smax, vmax);
    inRange(imgBlur, lower, upper, mask);

    vector<Vec3f> circles;
    HoughCircles(mask, circles, HOUGH_GRADIENT, 4, 20, 100, 63, 10, 47);

    int numCircles = circles.size();

    for (int i = 0; i < circles.size(); i++)
    {
        Point center(circles[i][0], circles[i][1]);
        circle(imgOutput, center, 1, Scalar(0, 0, 255), 2);
        circle(imgOutput, center, circles[i][2], Scalar(255, 0, 0), 2);
    }

    putText(imgOutput, "Jumlah bola ada " + to_string(numCircles), Point(25, 25), FONT_HERSHEY_SIMPLEX, 0.5, Scalar(255, 255, 255), 1);

    imshow("Image", img);
    // imshow("Image HSV", imgHSV);
    //imshow("Image Mask", mask);
    imshow("Image Output", imgOutput);
    waitKey(0);
    //}
}