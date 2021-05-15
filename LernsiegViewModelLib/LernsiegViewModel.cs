using LernsiegDbLib;
using MVVM.Tools;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows.Input;

namespace LernsiegViewModelLib
{
    public class LernsiegViewModel : ObservableObject
    {
        private LernsiegContext db;

        public LernsiegViewModel Init(LernsiegContext db)
        {
            this.db = db;
            Schools = db.Schools.ToList();
            SelectedSchool = Schools.First();
            return this;
        }

        private List<School> schools;

        public List<School> Schools
        {
            get { return schools; }
            set 
            { 
                schools = value;
            }
        }

        private School selectedSchool;

        public School SelectedSchool
        {
            get => selectedSchool;
            set
            {
                selectedSchool = value;
                Teachers = db.Teachers.Where(x => x.SchoolNumber == selectedSchool.Id).AsObservableCollection();
                RaisePropertyChangedEvent(nameof(SelectedSchool));
            }
        }

        private ObservableCollection<Teacher> teachers;

        public ObservableCollection<Teacher> Teachers
        {
            get { return teachers; }
            set 
            { 
                teachers = value;
                RaisePropertyChangedEvent(nameof(Teachers));
            }
        }

        private Teacher newTeacher=new Teacher();

        public Teacher NewTeacher
        {
            get => newTeacher;
            set
            {
                newTeacher = value;
                RaisePropertyChangedEvent(nameof(NewTeacher));
            }
        }

        public ICommand AddTeacher => new RelayCommand<string>(
            DoAddTeacher,
            x => NewTeacher.ToString().Length > 0
        );

        private void DoAddTeacher(string obj)
        {
            Teacher teacher = new Teacher { Name = NewTeacher.Name, SchoolNumber = NewTeacher.SchoolNumber, Title = NewTeacher.Title };
            Teachers.Add(teacher);
            db.Teachers.Add(teacher);
            db.SaveChanges();
        }

    }
}
