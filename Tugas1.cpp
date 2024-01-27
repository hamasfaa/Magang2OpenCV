#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int hmin = 0, smin = 78, vmin = 0;
int hmax = 179, smax = 255, vmax = 255;

int main()
{
    string path = "/home/hamasfa/Desktop/Magang2OpenCV/Bahan/Bola1.jpg";
    Mat img = imread(path);
    Mat imgHSV, mask, imgOutput;

    cvtColor(img, imgHSV, COLOR_BGR2HSV);
    Scalar lower(hmin, smin, vmin);
    Scalar upper(hmax, smax, vmax);
    inRange(imgHSV, lower, upper, mask);

    bitwise_and(img, img, imgOutput, mask);

    vector<vector<Point>> contours;
    vector<Vec4i> hierarchy;
    findContours(mask, contours, hierarchy, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

    int numCircles = contours.size();

    for (int i = 0; i < contours.size(); i++)
    {
        Point2f center;
        float radius;
        minEnclosingCircle(contours[i], center, radius);
        circle(imgOutput, center, radius, Scalar(0, 255, 0), 2);
    }

    putText(imgOutput, "Jumlah bola ada " + to_string(numCircles), Point(50, 50), FONT_HERSHEY_SIMPLEX, 1, Scalar(255, 255, 255), 2);

    imshow("Image", img);
    // imshow("Image Mask", mask);
    imshow("Image Output", imgOutput);
    waitKey(0);
}