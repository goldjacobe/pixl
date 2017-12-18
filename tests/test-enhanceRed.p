int main()
{
        pixel p;
        int r;
        int amt;
        pixel p2;
        int r2;
        string s1;
        string s2;

        p = (100,2,3,4);
        r = p.R;

        prints("current red is ");
        print(r);

        p2 = enhanceRed(p, 20);
        r2 = p2.R;
        prints("new red is ");
        print(r2);
}
