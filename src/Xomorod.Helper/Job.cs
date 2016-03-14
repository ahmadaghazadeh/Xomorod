using System;
using System.Collections.Generic;
using System.Timers;

namespace Xomorod.Helper
{
    public class Job
    {
        public readonly static List<Job> Jobs = new List<Job>();
        public static void Add(Job work)
        {
            Jobs.Add(work);
            work.Start();
        }

        public double Interval
        {
            get { return Timer.Interval; }
            set { Timer.Interval = value; }
        }
        public Action WorkAction { get; set; }
        protected Timer Timer;


        public Job() : this(1000) { }

        public Job(double interval)
        {
            Timer = new Timer();
            Timer.Elapsed += Timer_Elapsed;
            Timer.AutoReset = true;
            Timer.Interval = interval;
        }

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            WorkAction?.Invoke();
        }

        public void Start()
        {
            Timer.Start();
        }
        public void Stop()
        {
            Timer.Stop();
        }
    }
}