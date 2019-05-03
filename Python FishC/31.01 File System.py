#### File System

import os
import random

secret = random.randint(1,10)
print(secret)

## help(os)
"""
 _exit(status)
        Exit to the system with specified status, without normal exit processing.

    abort()
        Abort the interpreter immediately.

        This function 'dumps core' or otherwise fails in the hardest way possible
        on the hosting operating system.  This function never returns.

    access(path, mode, *, dir_fd=None, effective_ids=False, follow_symlinks=True)
        Use the real uid/gid to test for access to a path.

          path
            Path to be tested; can be string, bytes, or a path-like object.
          mode
            Operating-system mode bitfield.  Can be F_OK to test existence,
            or the inclusive-OR of R_OK, W_OK, and X_OK.
          dir_fd
            If not None, it should be a file descriptor open to a directory,
            and path should be relative; path will then be relative to that
            directory.
          effective_ids
            If True, access will use the effective uid/gid instead of
            the real uid/gid.
          follow_symlinks
            If False, and the last element of the path is a symbolic link,
            access will examine the symbolic link itself instead of the file
            the link points to.

        dir_fd, effective_ids, and follow_symlinks may not be implemented
          on your platform.  If they are unavailable, using them will raise a
          NotImplementedError.

        Note that most operations will use the effective uid/gid, therefore this
          routine can be used in a suid/sgid environment to test if the invoking user
          has the specified access to the path.

    chdir(path)
        Change the current working directory to the specified path.

        path may always be specified as a string.
        On some platforms, path may also be specified as an open file descriptor.
          If this functionality is unavailable, using it raises an exception.

    chmod(path, mode, *, dir_fd=None, follow_symlinks=True)
        Change the access permissions of a file.

          path
            Path to be modified.  May always be specified as a str, bytes, or a path-like object.
            On some platforms, path may also be specified as an open file descriptor.
            If this functionality is unavailable, using it raises an exception.
          mode
            Operating-system mode bitfield.
          dir_fd
            If not None, it should be a file descriptor open to a directory,
            and path should be relative; path will then be relative to that
            directory.
          follow_symlinks
            If False, and the last element of the path is a symbolic link,
            chmod will modify the symbolic link itself instead of the file
            the link points to.

        It is an error to use dir_fd or follow_symlinks when specifying path as
          an open file descriptor.
        dir_fd and follow_symlinks may not be implemented on your platform.
          If they are unavailable, using them will raise a NotImplementedError.

    close(fd)
        Close a file descriptor.

    closerange(fd_low, fd_high, /)
        Closes all file descriptors in [fd_low, fd_high), ignoring errors.

    cpu_count()
        Return the number of CPUs in the system; return None if indeterminable.

        This number is not equivalent to the number of CPUs the current process can
        use.  The number of usable CPUs can be obtained with
        ``len(os.sched_getaffinity(0))``

    device_encoding(fd)
        Return a string describing the encoding of a terminal's file descriptor.

        The file descriptor must be attached to a terminal.
        If the device is not a terminal, return None.

    dup(fd, /)
        Return a duplicate of a file descriptor.

    dup2(fd, fd2, inheritable=True)
        Duplicate file descriptor.

    execl(file, *args)
        execl(file, *args)

        Execute the executable file with argument list args, replacing the
        current process.

    execle(file, *args)
        execle(file, *args, env)

        Execute the executable file with argument list args and
        environment env, replacing the current process.

    execlp(file, *args)
        execlp(file, *args)

        Execute the executable file (which is searched for along $PATH)
        with argument list args, replacing the current process.

    execlpe(file, *args)
        execlpe(file, *args, env)

        Execute the executable file (which is searched for along $PATH)
        with argument list args and environment env, replacing the current
        process.

    execv(path, argv, /)
        Execute an executable path with arguments, replacing current process.

        path
          Path of executable file.
        argv
          Tuple or list of strings.

    execve(path, argv, env)
        Execute an executable path with arguments, replacing current process.

        path
          Path of executable file.
        argv
          Tuple or list of strings.
        env
          Dictionary of strings mapping to strings.

    execvp(file, args)
        execvp(file, args)

        Execute the executable file (which is searched for along $PATH)
        with argument list args, replacing the current process.
        args may be a list or tuple of strings.

    execvpe(file, args, env)
        execvpe(file, args, env)

        Execute the executable file (which is searched for along $PATH)
        with argument list args and environment env , replacing the
        current process.
        args may be a list or tuple of strings.

    fdopen(fd, *args, **kwargs)
        # Supply os.fdopen()

    fsdecode(filename)
        Decode filename (an os.PathLike, bytes, or str) from the filesystem
        encoding with 'surrogateescape' error handler, return str unchanged. On
        Windows, use 'strict' error handler if the file system encoding is
        'mbcs' (which is the default encoding).

    fsencode(filename)
        Encode filename (an os.PathLike, bytes, or str) to the filesystem
        encoding with 'surrogateescape' error handler, return bytes unchanged.
        On Windows, use 'strict' error handler if the file system encoding is
        'mbcs' (which is the default encoding).

    fspath(path)
        Return the file system path representation of the object.

        If the object is str or bytes, then allow it to pass through as-is. If the
        object defines __fspath__(), then return the result of that method. All other
        types raise a TypeError.

    fstat(fd)
        Perform a stat system call on the given file descriptor.

        Like stat(), but for an open file descriptor.
        Equivalent to os.stat(fd).

    fsync(fd)
        Force write of fd to disk.

    ftruncate(fd, length, /)
        Truncate a file, specified by file descriptor, to a specific length.

    get_exec_path(env=None)
        Returns the sequence of directories that will be searched for the
        named executable (similar to a shell) when launching a process.

        *env* must be an environment variable dict or None.  If *env* is None,
        os.environ will be used.

    get_handle_inheritable(handle, /)
        Get the close-on-exe flag of the specified file descriptor.

    get_inheritable(fd, /)
        Get the close-on-exe flag of the specified file descriptor.

    get_terminal_size(...)
        Return the size of the terminal window as (columns, lines).

        The optional argument fd (default standard output) specifies
        which file descriptor should be queried.

        If the file descriptor is not connected to a terminal, an OSError
        is thrown.

        This function will only be defined if an implementation is
        available for this system.

        shutil.get_terminal_size is the high-level function which should
        normally be used, os.get_terminal_size is the low-level implementation.

    getcwd()
        Return a unicode string representing the current working directory.

    getcwdb()
        Return a bytes string representing the current working directory.

    getenv(key, default=None)
        Get an environment variable, return None if it doesn't exist.
        The optional second argument can specify an alternate default.
        key, default and the result are str.

    getlogin()
        Return the actual login name.

    getpid()
        Return the current process id.

    getppid()
        Return the parent's process id.

        If the parent process has already exited, Windows machines will still
        return its id; others systems will return the id of the 'init' process (1).

    isatty(fd, /)
        Return True if the fd is connected to a terminal.

        Return True if the file descriptor is an open file descriptor
        connected to the slave end of a terminal.

    kill(pid, signal, /)
        Kill a process with a signal.

    link(src, dst, *, src_dir_fd=None, dst_dir_fd=None, follow_symlinks=True)
        Create a hard link to a file.

        If either src_dir_fd or dst_dir_fd is not None, it should be a file
          descriptor open to a directory, and the respective path string (src or dst)
          should be relative; the path will then be relative to that directory.
        If follow_symlinks is False, and the last element of src is a symbolic
          link, link will create a link to the symbolic link itself instead of the
          file the link points to.
        src_dir_fd, dst_dir_fd, and follow_symlinks may not be implemented on your
          platform.  If they are unavailable, using them will raise a
          NotImplementedError.

    listdir(path=None)
        Return a list containing the names of the files in the directory.

        path can be specified as either str, bytes, or a path-like object.  If path is bytes,
          the filenames returned will also be bytes; in all other circumstances
          the filenames returned will be str.
        If path is None, uses the path='.'.
        On some platforms, path may also be specified as an open file descriptor;\
          the file descriptor must refer to a directory.
          If this functionality is unavailable, using it raises NotImplementedError.

        The list is in arbitrary order.  It does not include the special
        entries '.' and '..' even if they are present in the directory.

    lseek(fd, position, how, /)
        Set the position of a file descriptor.  Return the new position.

        Return the new cursor position in number of bytes
        relative to the beginning of the file.

    lstat(path, *, dir_fd=None)
        Perform a stat system call on the given path, without following symbolic links.

        Like stat(), but do not follow symbolic links.
        Equivalent to stat(path, follow_symlinks=False).

    makedirs(name, mode=511, exist_ok=False)
        makedirs(name [, mode=0o777][, exist_ok=False])

        Super-mkdir; create a leaf directory and all intermediate ones.  Works like
        mkdir, except that any intermediate path segment (not just the rightmost)
        will be created if it does not exist. If the target directory already
        exists, raise an OSError if exist_ok is False. Otherwise no exception is
        raised.  This is recursive.

    mkdir(path, mode=511, *, dir_fd=None)
        Create a directory.

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

        The mode argument is ignored on Windows.

    open(path, flags, mode=511, *, dir_fd=None)
        Open a file for low level IO.  Returns a file descriptor (integer).

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    pipe()
        Create a pipe.

        Returns a tuple of two file descriptors:
          (read_fd, write_fd)

    popen(cmd, mode='r', buffering=-1)
        # Supply os.popen()

    putenv(name, value, /)
        Change or add an environment variable.

    read(fd, length, /)
        Read from a file descriptor.  Returns a bytes object.

    readlink(...)
        readlink(path, *, dir_fd=None) -> path

        Return a string representing the path to which the symbolic link points.

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    remove(path, *, dir_fd=None)
        Remove a file (same as unlink()).

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    removedirs(name)
        removedirs(name)

        Super-rmdir; remove a leaf directory and all empty intermediate
        ones.  Works like rmdir except that, if the leaf directory is
        successfully removed, directories corresponding to rightmost path
        segments will be pruned away until either the whole path is
        consumed or an error occurs.  Errors during this latter phase are
        ignored -- they generally mean that a directory was not empty.

    rename(src, dst, *, src_dir_fd=None, dst_dir_fd=None)
        Rename a file or directory.

        If either src_dir_fd or dst_dir_fd is not None, it should be a file
          descriptor open to a directory, and the respective path string (src or dst)
          should be relative; the path will then be relative to that directory.
        src_dir_fd and dst_dir_fd, may not be implemented on your platform.
          If they are unavailable, using them will raise a NotImplementedError.

    renames(old, new)
        renames(old, new)

        Super-rename; create directories as necessary and delete any left
        empty.  Works like rename, except creation of any intermediate
        directories needed to make the new pathname good is attempted
        first.  After the rename, directories corresponding to rightmost
        path segments of the old name will be pruned until either the
        whole path is consumed or a nonempty directory is found.

        Note: this function can fail with the new directory structure made
        if you lack permissions needed to unlink the leaf directory or
        file.

    replace(src, dst, *, src_dir_fd=None, dst_dir_fd=None)
        Rename a file or directory, overwriting the destination.

        If either src_dir_fd or dst_dir_fd is not None, it should be a file
          descriptor open to a directory, and the respective path string (src or dst)
          should be relative; the path will then be relative to that directory.
        src_dir_fd and dst_dir_fd, may not be implemented on your platform.
          If they are unavailable, using them will raise a NotImplementedError.

    rmdir(path, *, dir_fd=None)
        Remove a directory.

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    scandir(path=None)
        Return an iterator of DirEntry objects for given path.

        path can be specified as either str, bytes, or a path-like object.  If path
        is bytes, the names of yielded DirEntry objects will also be bytes; in
        all other circumstances they will be str.

        If path is None, uses the path='.'.

    set_handle_inheritable(handle, inheritable, /)
        Set the inheritable flag of the specified handle.

    set_inheritable(fd, inheritable, /)
        Set the inheritable flag of the specified file descriptor.

    spawnl(mode, file, *args)
        spawnl(mode, file, *args) -> integer

        Execute file with arguments from args in a subprocess.
        If mode == P_NOWAIT return the pid of the process.
        If mode == P_WAIT return the process's exit code if it exits normally;
        otherwise return -SIG, where SIG is the signal that killed it.

    spawnle(mode, file, *args)
        spawnle(mode, file, *args, env) -> integer

        Execute file with arguments from args in a subprocess with the
        supplied environment.
        If mode == P_NOWAIT return the pid of the process.
        If mode == P_WAIT return the process's exit code if it exits normally;
        otherwise return -SIG, where SIG is the signal that killed it.

    spawnv(mode, path, argv, /)
        Execute the program specified by path in a new process.

        mode
          Mode of process creation.
        path
          Path of executable file.
        argv
          Tuple or list of strings.

    spawnve(mode, path, argv, env, /)
        Execute the program specified by path in a new process.

        mode
          Mode of process creation.
        path
          Path of executable file.
        argv
          Tuple or list of strings.
        env
          Dictionary of strings mapping to strings.

    startfile(filepath, operation=None)
        startfile(filepath [, operation])

        Start a file with its associated application.

        When "operation" is not specified or "open", this acts like
        double-clicking the file in Explorer, or giving the file name as an
        argument to the DOS "start" command: the file is opened with whatever
        application (if any) its extension is associated.
        When another "operation" is given, it specifies what should be done with
        the file.  A typical operation is "print".

        startfile returns as soon as the associated application is launched.
        There is no option to wait for the application to close, and no way
        to retrieve the application's exit status.

        The filepath is relative to the current directory.  If you want to use
        an absolute path, make sure the first character is not a slash ("/");
        the underlying Win32 ShellExecute function doesn't work if it is.

    stat(path, *, dir_fd=None, follow_symlinks=True)
        Perform a stat system call on the given path.

          path
            Path to be examined; can be string, bytes, a path-like object or
            open-file-descriptor int.
          dir_fd
            If not None, it should be a file descriptor open to a directory,
            and path should be a relative string; path will then be relative to
            that directory.
          follow_symlinks
            If False, and the last element of the path is a symbolic link,
            stat will examine the symbolic link itself instead of the file
            the link points to.

        dir_fd and follow_symlinks may not be implemented
          on your platform.  If they are unavailable, using them will raise a
          NotImplementedError.

        It's an error to use dir_fd or follow_symlinks when specifying path as
          an open file descriptor.

    strerror(code, /)
        Translate an error code to a message string.

    symlink(src, dst, target_is_directory=False, *, dir_fd=None)
        Create a symbolic link pointing to src named dst.

        target_is_directory is required on Windows if the target is to be
          interpreted as a directory.  (On Windows, symlink requires
          Windows 6.0 or greater, and raises a NotImplementedError otherwise.)
          target_is_directory is ignored on non-Windows platforms.

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    system(command)
        Execute the command in a subshell.

    times()
        Return a collection containing process timing information.

        The object returned behaves like a named tuple with these fields:
          (utime, stime, cutime, cstime, elapsed_time)
        All fields are floating point numbers.

    truncate(path, length)
        Truncate a file, specified by path, to a specific length.

        On some platforms, path may also be specified as an open file descriptor.
          If this functionality is unavailable, using it raises an exception.

    umask(mask, /)
        Set the current numeric umask and return the previous umask.

    unlink(path, *, dir_fd=None)
        Remove a file (same as remove()).

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        dir_fd may not be implemented on your platform.
          If it is unavailable, using it will raise a NotImplementedError.

    urandom(size, /)
        Return a bytes object containing random bytes suitable for cryptographic use.

    utime(path, times=None, *, ns=None, dir_fd=None, follow_symlinks=True)
        Set the access and modified time of path.

        path may always be specified as a string.
        On some platforms, path may also be specified as an open file descriptor.
          If this functionality is unavailable, using it raises an exception.

        If times is not None, it must be a tuple (atime, mtime);
            atime and mtime should be expressed as float seconds since the epoch.
        If ns is specified, it must be a tuple (atime_ns, mtime_ns);
            atime_ns and mtime_ns should be expressed as integer nanoseconds
            since the epoch.
        If times is None and ns is unspecified, utime uses the current time.
        Specifying tuples for both times and ns is an error.

        If dir_fd is not None, it should be a file descriptor open to a directory,
          and path should be relative; path will then be relative to that directory.
        If follow_symlinks is False, and the last element of the path is a symbolic
          link, utime will modify the symbolic link itself instead of the file the
          link points to.
        It is an error to use dir_fd or follow_symlinks when specifying path
          as an open file descriptor.
        dir_fd and follow_symlinks may not be available on your platform.
          If they are unavailable, using them will raise a NotImplementedError.

    waitpid(pid, options, /)
        Wait for completion of a given process.

        Returns a tuple of information regarding the process:
            (pid, status << 8)

        The options argument is ignored on Windows.

    walk(top, topdown=True, onerror=None, followlinks=False)
        Directory tree generator.

        For each directory in the directory tree rooted at top (including top
        itself, but excluding '.' and '..'), yields a 3-tuple

            dirpath, dirnames, filenames

        dirpath is a string, the path to the directory.  dirnames is a list of
        the names of the subdirectories in dirpath (excluding '.' and '..').
        filenames is a list of the names of the non-directory files in dirpath.
        Note that the names in the lists are just names, with no path components.
        To get a full path (which begins with top) to a file or directory in
        dirpath, do os.path.join(dirpath, name).

        If optional arg 'topdown' is true or not specified, the triple for a
        directory is generated before the triples for any of its subdirectories
        (directories are generated top down).  If topdown is false, the triple
        for a directory is generated after the triples for all of its
        subdirectories (directories are generated bottom up).

        When topdown is true, the caller can modify the dirnames list in-place
        (e.g., via del or slice assignment), and walk will only recurse into the
        subdirectories whose names remain in dirnames; this can be used to prune the
        search, or to impose a specific order of visiting.  Modifying dirnames when
        topdown is false is ineffective, since the directories in dirnames have
        already been generated by the time dirnames itself is generated. No matter
        the value of topdown, the list of subdirectories is retrieved before the
        tuples for the directory and its subdirectories are generated.

        By default errors from the os.scandir() call are ignored.  If
        optional arg 'onerror' is specified, it should be a function; it
        will be called with one argument, an OSError instance.  It can
        report the error to continue with the walk, or raise the exception
        to abort the walk.  Note that the filename is available as the
        filename attribute of the exception object.

        By default, os.walk does not follow symbolic links to subdirectories on
        systems that support them.  In order to get this functionality, set the
        optional argument 'followlinks' to true.

        Caution:  if you pass a relative pathname for top, don't change the
        current working directory between resumptions of walk.  walk never
        changes the current directory, and assumes that the client doesn't
        either.

        Example:

        import os
        from os.path import join, getsize
        for root, dirs, files in os.walk('python/Lib/email'):
            print(root, "consumes", end="")
            print(sum([getsize(join(root, name)) for name in files]), end="")
            print("bytes in", len(files), "non-directory files")
            if 'CVS' in dirs:
                dirs.remove('CVS')  # don't visit CVS directories
"""

## help(os.path)
"""
Help on module ntpath:

NAME
    ntpath - Common pathname manipulations, WindowsNT/95 version.

DESCRIPTION
    Instead of importing this module directly, import os and refer to this
    module as os.path.

FUNCTIONS
    abspath(path)
        Return the absolute version of a path.

    basename(p)
        Returns the final component of a pathname

    commonpath(paths)
        Given a sequence of path names, returns the longest common sub-path.

    commonprefix(m)
        Given a list of pathnames, returns the longest common leading component

    dirname(p)
        Returns the directory component of a pathname

    exists(path)
        Test whether a path exists.  Returns False for broken symbolic links

    expanduser(path)
        Expand ~ and ~user constructs.

        If user or $HOME is unknown, do nothing.

    expandvars(path)
        Expand shell variables of the forms $var, ${var} and %var%.

        Unknown variables are left unchanged.

    getatime(filename)
        Return the last access time of a file, reported by os.stat().

    getctime(filename)
        Return the metadata change time of a file, reported by os.stat().

    getmtime(filename)
        Return the last modification time of a file, reported by os.stat().

    getsize(filename)
        Return the size of a file, reported by os.stat().

    isabs(s)
        Test whether a path is absolute

    isdir = _isdir(path, /)
        Return true if the pathname refers to an existing directory.

    isfile(path)
        Test whether a path is a regular file

    islink(path)
        Test whether a path is a symbolic link.
        This will always return false for Windows prior to 6.0.

    ismount(path)
        Test whether a path is a mount point (a drive root, the root of a
        share, or a mounted volume)

    join(path, *paths)
        # Join two (or more) paths.

    lexists(path)
        Test whether a path exists.  Returns True for broken symbolic links

    normcase(s)
        Normalize case of pathname.

        Makes all characters lowercase and all slashes into backslashes.

    normpath(path)
        Normalize path, eliminating double slashes, etc.

    realpath = abspath(path)
        Return the absolute version of a path.

    relpath(path, start=None)
        Return a relative version of a path

    samefile(f1, f2)
        Test whether two pathnames reference the same actual file

    sameopenfile(fp1, fp2)
        Test whether two open file objects reference the same file

    samestat(s1, s2)
        Test whether two stat buffers reference the same file

    split(p)
        Split a pathname.

        Return tuple (head, tail) where tail is everything after the final slash.
        Either part may be empty.

    splitdrive(p)
        Split a pathname into drive/UNC sharepoint and relative path specifiers.
        Returns a 2-tuple (drive_or_unc, path); either part may be empty.

        If you assign
            result = splitdrive(p)
        It is always true that:
            result[0] + result[1] == p

        If the path contained a drive letter, drive_or_unc will contain everything
        up to and including the colon.  e.g. splitdrive("c:/dir") returns ("c:", "/dir")

        If the path contained a UNC path, the drive_or_unc will contain the host name
        and share up to but not including the fourth directory separator character.
        e.g. splitdrive("//host/computer/dir") returns ("//host/computer", "/dir")

        Paths cannot contain both a drive letter and a UNC path.

    splitext(p)
        Split the extension from a pathname.

        Extension is everything from the last dot to the end, ignoring
        leading dots.  Returns "(root, ext)"; ext may be empty.

DATA
    __all__ = ['normcase', 'isabs', 'join', 'splitdrive', 'split', 'splite...
    altsep = '/'
    curdir = '.'
    defpath = r'.;C:\bin'
    devnull = 'nul'
    extsep = '.'
    pardir = '..'
    pathsep = ';'
    sep = r'\'
    supports_unicode_filenames = True
"""

re = os.listdir()
print(re)

re = os.name
print(re)

import time

re = time.gmtime()
print(re)

re = time.localtime()
print(re)